describe("Home page", () => {
  it("loads successfully", () => {
    cy.visit("/");

    cy.contains("Log ind");
  });
});

