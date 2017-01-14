import React from 'react';

class AddBookFormItem extends React.Component{
  constructor(props) {
    super(props);
    this.state = { sym: this.props.sym};
    this.handleClick = this.handleClick.bind(this);
  }

  componentWillReceiveProps(newProps) {
    if (this.state.sym === "💤" ) {
      this.setState({sym: newProps.sym});
    }
  }

  handleClick() {
    console.log("click");
    if (this.state.sym !== "💤" ) {
      this.setState({sym: "💤" }, () =>
      this.props.handleClick(this.props.shelf.id, this.props.bookId));
    }
  }

  render() {
    return(
      <div className="abf-item" onClick={this.handleClick}>
        <div className="heart">{this.state.sym}</div>
        {this.props.shelf.name}
      </div>
    );
  }
}

export default AddBookFormItem;
