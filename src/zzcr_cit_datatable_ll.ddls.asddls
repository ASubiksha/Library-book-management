@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZCCIT_DATATABLE_LL'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZCR_CIT_DATATABLE_LL
  as select from ZCIT_DATATABLE_L
{
  key book_id as BookID,
  book_title as BookTitle,
  author_name as AuthorName,
  isbn_number as IsbnNumber,
  category as Category,
  publisher as Publisher,
  publication_date as PublicationDate,
  language as Language,
  total_copies as TotalCopies,
  available_copies as AvailableCopies,
  issued_to_student_id as IssuedToStudentID,
  issue_date as IssueDate,
  return_date as ReturnDate,
  fine_amount as FineAmount,
  created_by as CreatedBy,
  created_at as CreatedAt,
  last_changed_by as LastChangedBy,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
