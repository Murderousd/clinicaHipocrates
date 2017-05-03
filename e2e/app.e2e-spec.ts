import { ClinicaHipocratesPage } from './app.po';

describe('clinica-hipocrates App', () => {
  let page: ClinicaHipocratesPage;

  beforeEach(() => {
    page = new ClinicaHipocratesPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
