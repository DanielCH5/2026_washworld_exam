 beforeEach(() => {
    cy.visit("/");
    cy.wait(1000)

    cy.get('input[type="email"]')
      .type("john@mail.com");

    cy.get('input[type="password"]')
      .type("12345678");

    cy.contains('button', 'Log ind').click();

  });

  // CREATE CAR
describe("Cars create and delete", () => {
  it("Car and delete successfully", () => {
    cy.visit("/cars");

    cy.wait(1000)
    cy.contains('Registrer', { timeout: 10000 })
        .should('be.visible');
    cy.contains('button', 'Registrer').click();
    

    cy.get('[data-cy="car-nickname"]')
      .type('Test Car');

    cy.get('[data-cy="car-model"]')
      .type('Volkswagen');

    cy.contains('button', 'Volkswagen Golf').click();

    cy.get('[data-cy="car-licenseplate"]')
    .type('12345678');

    cy.contains('button', 'Registrer køretøj').click();



        cy.contains('[data-cy="car-card"]', 'Test Car')
    .within(() => {
    cy.get('[data-cy="delete-button"]')
    .first()
  .click({ force: true });


        cy.contains('button', 'Slet køretøj').click();

  });
     });
});