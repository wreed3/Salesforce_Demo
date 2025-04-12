import { createElement } from "lwc";
import Willpage from "c/willpage";

describe("c-willpage", () => {
  afterEach(() => {
    // The jsdom instance is shared across test cases in a single file so reset the DOM
    while (document.body.firstChild) {
      document.body.removeChild(document.body.firstChild);
    }
  });

  it("has the correct text layout", () => {
    // Arrange
    const element = createElement("c-willpage", {
      is: Willpage
    });
    const name = "Will";
    const date = String(new Date());

    // Act
    document.body.appendChild(element);

    // Assert
    const div = element.shadowRoot.querySelector("div");
    const content = div.textContent;
    expect(content).toBe(`Hello I am ${name}. Today is ${date}.`);
  });
});
