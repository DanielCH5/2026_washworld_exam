describe("Login", () => {
  it("Logged in and out successfully", () => {
    cy.visit("/");

    cy.wait(1000)
    cy.get('input[type="email"]')
      .type("john@mail.com");

    cy.get('input[type="password"]')
      .type("12345678");

    cy.contains('button', 'Log ind').click();

    cy.contains('John Belvedere').should('be.visible');

     cy.contains('John Belvedere').click();


    cy.get('[data-cy="logout-button"]')
    .scrollIntoView()
    .click();

    cy.contains('Log ind').should('be.visible');

  });
});