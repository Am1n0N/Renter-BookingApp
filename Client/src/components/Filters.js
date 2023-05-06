import React from "react";
import Filter from "./Filter";
import useCategoryList from "../hooks/useCategoryList";

const Filters = ({onclick}) => {
  const sorting = useCategoryList();
  return (
    <div className="   ">
      <div className="flex justify-start  gap-3 sm:gap-4  mt-4  ">
        {sorting.map((obj) => (
          <Filter title={obj.name} onclick={onclick} />
        ))}
      </div>
    </div>
  );
};

export default Filters;
