"use strict";
var ready = (callback) => {
  if (document.readyState != "loading") callback();
  else document.addEventListener("DOMContentLoaded", callback);
};

function handleClick(e) {
  let main = document.getElementById("toastr-container");
  main.removeChild(e.target.parentNode);
}

ready(() => {
  const closeToast = document.querySelector(".toastr-close-button");
  closeToast?.addEventListener("click", handleClick);
});

// document
//   .querySelector("#form-create-record")
//   .addEventListener("submit", function (e) {
//     e.preventDefault();
//     var form = new FormData(this);
//     let token = document
//       .querySelector("meta[name='csrf-token']")
//       .getAttribute("content");

//     console.log(form);

//     // fetch(this.action, {
//     //   method: "POST",
//     //   body: form,
//     //   headers: {
//     //     "Content-Type": "application/json",
//     //     "X-CSRF-Token": token,
//     //   },
//     // })
//     //   .then(function (response) {
//     //     return response.json();
//     //   })
//     //   .then(function (data) {
//     //     if (data.errors) {
//     //       alert("Lỗi: " + data.errors.join(", "));
//     //     } else {
//     //       alert("Bản ghi đã được tạo thành công.");
//     //     }
//     //   })
//     //   .catch(function (error) {
//     //     console.log("Lỗi: " + error);
//     //   });
//   });
