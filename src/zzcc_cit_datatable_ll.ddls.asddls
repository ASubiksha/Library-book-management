@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCCIT_DATATABLE_LL'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCC_CIT_DATATABLE_LL
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCR_CIT_DATATABLE_LL
  association [1..1] to ZZCR_CIT_DATATABLE_LL as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  BookTitle,
  AuthorName,
  IsbnNumber,
  Category,
  Publisher,
  PublicationDate,
  Language,
  TotalCopies,
  AvailableCopies,
  IssuedToStudentID,
  IssueDate,
  ReturnDate,
  FineAmount,
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
