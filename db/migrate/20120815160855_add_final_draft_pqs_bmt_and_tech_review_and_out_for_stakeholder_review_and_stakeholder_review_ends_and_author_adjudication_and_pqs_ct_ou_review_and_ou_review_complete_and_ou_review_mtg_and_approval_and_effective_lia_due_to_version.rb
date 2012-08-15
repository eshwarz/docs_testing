class AddFinalDraftPqsBmtAndTechReviewAndOutForStakeholderReviewAndStakeholderReviewEndsAndAuthorAdjudicationAndPqsCtOuReviewAndOuReviewCompleteAndOuReviewMtgAndApprovalAndEffectiveLiaDueToVersion < ActiveRecord::Migration
  def change
    add_column :versions, :final_draft_pqs_bmt, :date

    add_column :versions, :tech_review, :date

    add_column :versions, :out_for_stakeholder_review, :date

    add_column :versions, :stakeholder_review_ends, :date

    add_column :versions, :author_adjudication, :date

    add_column :versions, :pqs_ct_ou_review, :date

    add_column :versions, :ou_review_complete, :date

    add_column :versions, :ou_review_mtg, :date

    add_column :versions, :approval, :date

    add_column :versions, :effective_lia_due, :date

  end
end
