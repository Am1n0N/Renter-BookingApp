import React from 'react';
import useCategoryList from '../hooks/useCategoryList';
import '../styles/popup.css';

const HouseFormPopup = (props) => {
  const categories = useCategoryList();

  return (
    <div className="popup">
      <div className="popup-inner">
        <button className="popup-close" onClick={props.handleClose}>
          X
        </button>
        <form onSubmit={() =>props.handleSubmit}>
          <div className="form-group">
            <label htmlFor="title">Title</label>
            <input
              className="text-input"
              type="text"
              name="title"
              value={props.formData.title}
              onChange={() => props.handleInputChange}
            />
          </div>
          <div className="form-group">
            <label htmlFor="description">Description</label>
            <input
              className="text-input"
              type="text"
              name="description"
              value={props.formData.description}
              onChange={() =>props.handleInputChange}
            />
          </div>
          <div className="form-group">
            <label htmlFor="date">Date</label>
            <input
              className="text-input"
              type="text"
              name="date"
              value={props.formData.date}
              onChange={() =>props.handleInputChange}
            />
          </div>
          <div className="form-group">
            <label htmlFor="image">Image</label>
            <input
              className="text-input"
              type="text"
              name="image"
              value={props.formData.image}
              onChange={() =>props.handleInputChange}
            />
          </div>
          <div className="form-group">
            <label htmlFor="price">Price</label>
            <input
              className="text-input"
              type="text"
              name="price"
              value={props.formData.price}
              onChange={() =>props.handleInputChange}
            />
          </div>
          <div className="form-group">
            <label htmlFor="rating">Rating</label>
            <input
              className="text-input"
              type="text"
              name="rating"
              value={props.formData.rating}
              onChange={() =>props.handleInputChange}
            />
          </div>
          <div className="form-group">
            <label htmlFor="category">Category</label>
            <select
              name="category_id"
              value={props.formData.category_id}
              onChange={() =>props.handleInputChange}
            >
              {categories.map((category) => (
                <option key={category.id} value={category.id}>
                  {category.name}
                </option>
              ))}
            </select>
          </div>
          <button type="submit">Save</button>
        </form>
      </div>
    </div>
  );
};

export default HouseFormPopup;
