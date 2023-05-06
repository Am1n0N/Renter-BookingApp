import React from "react";

const Filter = ({ title, onclick }) => {
  return (
    <button
      onClick={() => onclick(title)}
      value={title}
      className="flex items-center text-white bg-[#ff5a60] hover:bg-white hover:text-[#ff5a60]   duration-200 ease-out gap-2 py-1 px-3 sm:px-4 rounded-full text-[14px] sm:text-[16px]">
      {title}
    </button>
  );
};

export default Filter;
