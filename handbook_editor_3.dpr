program handbook_editor_3;

uses
  Vcl.Forms,
  form_main in 'form_main.pas' {fmMain},
  form_handbook in 'form_handbook.pas' {fmHandbook},
  form_admin in 'form_admin.pas' {fmAdmin},
  datamodule in 'datamodule.pas' {ModuleDB: TDataModule},
  form_group_edit in 'form_group_edit.pas' {fmGroupEdit},
  SystemUnit in 'SystemUnit.pas',
  form_user_edit in 'form_user_edit.pas' {fmUserEdit},
  form_login in 'form_login.pas' {fmLogin},
  md5Hash in 'md5Hash.pas',
  form_unit_edit in 'form_unit_edit.pas' {fmUnitEdit},
  form_contact_edit in 'form_contact_edit.pas' {fmContactEdit},
  form_contact_update in 'form_contact_update.pas' {fmContactUpdate},
  form_feedback in 'form_feedback.pas' {fmFeedback},
  form_feedback_delete in 'form_feedback_delete.pas' {fmFeedbackDelete},
  form_feedback_edit in 'form_feedback_edit.pas' {fmFeedbackEdit},
  form_feedback_insert in 'form_feedback_insert.pas' {fmFeedbackInsert},
  form_password_set in 'form_password_set.pas' {fmPassSet},
  form_email in 'form_email.pas' {fmEmail},
  form_email_exceptions in 'form_email_exceptions.pas' {fmEmailExceptions},
  form_wizard_contact_add_email in 'form_wizard_contact_add_email.pas' {fmWizardContactAddEmail};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Handbook Editor';
  Application.CreateForm(TModuleDB, ModuleDB);
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
