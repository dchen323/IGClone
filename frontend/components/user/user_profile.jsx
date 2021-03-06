import React from "react";
import { PictureIndexItems } from "../picture/picture_index_items";
import Modal from "react-modal";
import UserProfileInfo from "./user_profile_info";
import { UserModal } from "../modal/modal";
import { merge } from "lodash";
import Spinner from "../spinner/Spinner";

let customStyles = {
  overlay: {
    backgroundColor: "rgba(0, 0, 0, 0.50)"
  },
  content: {
    top: "50%",
    left: "50%",
    right: "auto",
    bottom: "auto",
    marginRight: "-50%",
    transform: "translate(-50%, -50%)",
    width: "900px"
  }
};

class UserProfile extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      modalIsOpen: false,
      modalType: "",
      value: ""
    };
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  componentDidMount() {
    this.props.fetchUser(this.props.match.params.userId);
    Modal.setAppElement("body");
  }

  static getDerivedStateFromProps(nextProps, prevState) {
    const nextId = parseInt(nextProps.match.params.userId);
    if (prevState.userId !== nextId) {
      return {
        userId: nextId
      };
    }

    return null;
  }

  componentDidUpdate(prevProps, prevState) {
    if (prevState.userId !== this.state.userId) {
      this.props.fetchUser(this.state.userId);
    }
  }

  openModal(field, key) {
    return () => {
      this.setState({
        modalIsOpen: true,
        modalType: field,
        value: key
      });
    };
  }

  closeModal() {
    this.setState({ modalIsOpen: false });
  }

  render() {
    if (this.props.user === undefined) {
      return <Spinner />;
    }
    const pictures = this.props.pictures.map(picture => {
      let likeCount = Object.values(this.props.likes).filter(
        like => like.pictureId === picture.id
      ).length;
      let commentCount = Object.values(this.props.comments).filter(
        comment => comment.pictureId === picture.id
      ).length;
      return (
        <PictureIndexItems
          key={picture.id}
          picture={picture}
          openModal={this.openModal}
          pictureId={picture.id}
          likeCount={likeCount}
          commentCount={commentCount}
        />
      );
    });
    if (this.state.modalType === "Add Photo") {
      customStyles = merge(customStyles, {
        content: {
          width: "40%",
          height: "82%",
          background: "#FAFAFA",
          borderRadius: "20px"
        }
      });
    } else if (this.state.modalType === "Show Photo") {
      customStyles = merge(customStyles, {
        content: { width: "900px", height: "auto", borderRadius: "4px" }
      });
    } else {
      customStyles = merge(customStyles, {
        content: { width: "25vw", height: "auto", borderRadius: "20px" }
      });
    }

    return (
      <div className="user">
        <header className="profile-box">
          <img src={this.props.user.imgUrl} className="user-pic" />
          <div className="user-content">
            <UserProfileInfo
              openModal={this.openModal}
              username={this.props.user.username}
              length={this.props.pictures.length}
              name={this.props.user.name}
              userId={this.props.user.id}
              followed={this.props.followed}
              following={this.props.following}
              currentUser={this.props.user.id === this.props.sessionId}
            />
            <Modal
              isOpen={this.state.modalIsOpen}
              onRequestClose={this.closeModal}
              contentLabel="Modal"
              style={customStyles}
            >
              <UserModal
                modalType={this.state.modalType}
                closeModal={this.closeModal}
                pictureId={this.state.value}
                userId={this.props.user.id}
                history={this.props.history}
              />
            </Modal>
          </div>
        </header>
        <footer className="profile-footer">
          <h4 className="user-info">Posts</h4>
          <h4 className="user-info">Saved</h4>
        </footer>
        <content className="picture-container">
          <ul className="picture-holder">{pictures}</ul>
        </content>
      </div>
    );
  }
}

export default UserProfile;
