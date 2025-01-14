#' @name .create_list_products_df_with_template
#' 
#' @title Create the object to return in \code{create_reaction}
#' 
#' @description 
#' Helper function for \code{create_reaction}.
#' 
#' The function \code{.create_list_products_df_with_template} will return a
#' list of length 2 containing the products (in the first entry) and the 
#' updated \code{template} object (in the second entry).
#' 
#' @details
#' Depending on the \code{reaction}, the first list entry will contain one or 
#' multiple entries.
#' 
#' @author Thomas Naake, \email{thomasnaake@@googlemail.com}
#' 
#' @param df_reaction \code{data.frame}
#' @param template \code{template}
#' 
#' @return list of length 2
#' 
#' @examples 
#' FA <- c("FA(14:0(12Me))", "FA(16:0(14Me))", "FA(15:1(9Z)(14Me))",        
#'     "FA(17:0(16Me))", "FA(12:0(11Me))", "FA(13:0(12Me))", "FA(14:0(13Me))",
#'     "FA(15:0(14Me))", "FA(16:0(15Me))", "FA(12:0)", "FA(14:0)")
#' substrates <- list(FA = FA)
#' 
#' ## create template
#' template <- wormLipidPredictR:::.create_template(template = NA, 
#'     reaction = "fa_to_coa")
#' 
#' ## create data.frame of substrates
#' df_substrates <- wormLipidPredictR:::.create_substrates_combinations(
#'     substrates = substrates, 
#'     constraints = "", negate = FALSE)
#'     
#' ## add products to data.frame
#' df_reaction <- wormLipidPredictR:::.add_products(
#'     substrates = df_substrates, 
#'     reaction = "fa_to_coa")
#'     
#' ## make new data.frame with reaction template
#' df <- wormLipidPredictR:::.create_df_with_template(
#'     df_reaction = df_reaction,
#'     template = template, reaction = reaction)
#' 
#' wormLipidPredictR:::.create_list_products_df_with_template(
#'     df_reaction = df_reaction,
#'     template = template,
#'     reaction = "fa_to_coa")
.create_list_products_df_with_template <- function(df_reaction, template, 
    reaction = "fa_to_coa") {
    
    if (reaction == "acdhap_to_alkyldhap")
        .l <- list(list(ALKYLDHAP = unique(df_reaction$ALKYLDHAP)), 
            template)
    
    if (reaction == "alkyldhap_to_lpao")
        .l <- list(list(LPAO = unique(df_reaction$LPAO)), template)

    if (reaction == "c1p_to_cer")
        .l <- list(list(CER = unique(df_reaction$CER)), template)
    
    if (reaction == "cdpdg_to_pgp")
        .l <- list(list(PGP = unique(df_reaction$PGP)), template)
    
    if (reaction == "cdpdg_to_pi")
        .l <- list(list(PI = unique(df_reaction$PI)), template)
    
    if (reaction == "cer_to_c1p")
        .l <- list(list(C1P = unique(df_reaction$C1P)), template)
    
    if (reaction == "cer_to_glccer")
        .l <- list(list(GLCCER = unique(df_reaction$GLCCER)), template)
    
    if (reaction == "cer_to_sm")
        .l <- list(list(SM = unique(df_reaction$SM)), template)
    
    if (reaction == "coa_to_acdhap")
        .l <- list(list(DHAP = unique(df_reaction$DHAP)), template)
    
    if (reaction == "coa_to_fatoh")
        .l <- list(list(FATOH = unique(df_reaction$FATOH)), template)
    
    if (reaction == "coa_to_lpa")
        .l <- list(list(LPA = unique(df_reaction$LPA)), template)
    
    if (reaction == "dg_to_sn1mg")
        .l <- list(list(sn1MG = unique(df_reaction$sn1MG)), template)
    
    if (reaction == "dg_to_sn2mg")
        .l <- list(list(sn2MG = unique(df_reaction$sn2MG)), template)
    
    if (reaction == "dg_to_pa")
        .l <- list(list(PA = unique(df_reaction$PA)), template)
    
    if (reaction == "dg_to_pc")
        .l <- list(list(PC = unique(df_reaction$PC)), template)
    
    if (reaction == "dg_to_pe")
        .l <- list(list(PE = unique(df_reaction$PE)), template)
    
    if (reaction == "dg_to_tg")
        .l <- list(list(TG = unique(df_reaction$TG)), template)
    
    if (reaction == "dgo_to_pco")
        .l <- list(list(PCO = unique(df_reaction$PCO)), template)
    
    if (reaction == "dgo_to_peo")
        .l <- list(list(PEO = unique(df_reaction$PEO)), template)
    
    if (reaction == "dhcer_to_cer")
        .l <- list(list(CER = unique(df_reaction$CER)), template)
    
    if (reaction == "dhcer_to_dhsm")
        .l <- list(list(DHSM = unique(df_reaction$DHSM)), template)
    
    if (reaction == "dhsm_to_dhcer")
        .l <- list(list(unique(df_reaction$DHCER)), template)
    
    if (reaction == "fa_to_coa")
        .l <- list(list(CoA = unique(df_reaction$CoA)), template)
    
    if (reaction == "lnape_to_gpnae")
        .l <- list(
            list(GPNAE = unique(df_reaction$GPNAE), 
                FA = unique(df_reaction$FA)), 
            template)
    
    if (reaction == "lpa_to_pa")
        .l <- list(list(PA = unique(df_reaction$PA)), template)
    
    if (reaction == "lpao_to_pao")
        .l <- list(list(PAO = unique(df_reaction$PAO)), template)
    
    if (reaction == "sn1lpc_to_fa")
        .l <- list(list(FA = unique(df_reaction$FA)), template)
    
    if (reaction == "sn2lpc_to_fa")
        .l <- list(list(FA = unique(df_reaction$FA)), template)
    
    if (reaction == "sn1lpc_to_pc")
        .l <- list(list(PC = unique(df_reaction$PC)), template)
    
    if (reaction == "sn1lpe_to_fa")
        .l <- list(list(FA = unique(df_reaction$FA)), template)
    
    if (reaction == "sn2lpe_to_fa")
        .l <- list(list(FA = unique(df_reaction$FA)), template)
    
    if (reaction == "sn1lpe_to_pe")
        .l <- list(list(PE = unique(df_reaction$PE)), template)
    
    if (reaction == "lpeo_to_peo")
        .l <- list(list(PO = unique(df_reaction$PEO)), template)
    
    if (reaction == "lpep_to_pep")
        .l <- list(list(PEP = unique(df_reaction$PEP)), template)
    
    if (reaction == "sn1mg_to_dg")
        .l <- list(list(DG = unique(df_reaction$DG)), template)
    
    if (reaction == "sn2mg_to_dg")
        .l <- list(list(DG = unique(df_reaction$DG)), template)
    
    if (reaction == "sn1mg_to_fa")
        .l <- list(list(FA = unique(df_reaction$FA)), template)
    
    if (reaction == "sn2mg_to_fa")
        .l <- list(list(FA = unique(df_reaction$FA)), template)
    
    if (reaction == "sn1mg_to_lpa")
        .l <- list(list(LPA = unique(df_reaction$LPA)), template)
    
    if (reaction == "sn2mg_to_sn1mg")
        .l <- list(list(sn1MG = unique(df_reaction$sn1MG)), template)
    
    if (reaction == "nae_to_fa")
        .l <- list(list(FA = unique(df_reaction$FA)), template)
    
    if (reaction == "nape_to_lnape")
        .l <- list(
           list(LNAPE = unique(df_reaction$LNAPE), FA = unique(df_reaction$FA)), 
           template)
    
    if (reaction == "nape_to_nae")
        .l <- list(
           list(NAE = unique(df_reaction$NAE), PA = unique(df_reaction$PA)), 
           template)
    
    if (reaction == "nape_to_pnae")
        .l <- list(
           list(NAE = unique(df_reaction$NAE), DG = unique(df_reaction$DG)), 
           template)
    
    if (reaction == "napeo_to_nae")
        .l <- list(
           list(NAE = unique(df_reaction$NAE), PAO = unique(df_reaction$PAO)),
           template)
    
    if (reaction == "pa_to_cdpdg")
        .l <- list(list(CDPDG = unique(df_reaction$CDPDG)), template)
    
    if (reaction == "pa_to_dg")
        .l <- list(list(DG = unique(df_reaction$DG)), template)
    
    if (reaction == "pao_to_dgo")
        .l <- list(list(DGO = unique(df_reaction$DGO)), template)
    
    if (reaction == "pc_to_dg")
        .l <- list(list(DG = unique(df_reaction$DG)), template)
    
    if (reaction == "pc_to_sn1lpc")
        .l <- list(list(sn1LPC = unique(df_reaction$sn1LPC)), template)
    
    if (reaction == "pc_to_sn2lpc")
        .l <- list(list(sn2LPC = unique(df_reaction$sn2LPC)), template)
    
    if (reaction == "pc_to_pa")
        .l <- list(list(PA = unique(df_reaction$PA)), template)
    
    if (reaction == "pc_to_ps")
        .l <- list(list(PS = unique(df_reaction$PS)), template)
    
    if (reaction == "pco_to_lpco")
        .l <- list(list(LPCO = unique(df_reaction$LPCO)), template)
    
    if (reaction == "pe_to_dg")
        .l <- list(list(DG = unique(df_reaction$DG)), template)
    
    if (reaction == "pe_to_sn1lpe")
        .l <- list(list(sn1LPE = unique(df_reaction$sn1LPE)), template)
    
    if (reaction == "pe_to_sn2lpe")
        .l <- list(list(sn2LPE = unique(df_reaction$sn2LPE)), template)
    
    if (reaction == "pe_to_nape_sn1")
        .l <- list(
           list(NAPE = unique(df_reaction$NAPE), LPC = unique(df_reaction$LPC)), 
           template)
    
    if (reaction == "pe_to_nape_sn2")
        .l <- list(
           list(NAPE = unique(df_reaction$NAPE), LPC = unique(df_reaction$LPC)), 
            template)
    
    if (reaction == "pe_to_pa")
        .l <- list(list(PA = unique(df_reaction$PA)), template)
    
    if (reaction == "pe_to_ps")
        .l <- list(list(PS = unique(df_reaction$PS)), template)
    
    if (reaction == "peo_to_lpeo")
        .l <- list(list(LPEO = unique(df_reaction$LPEO)), template)
    
    if (reaction == "peo_to_napeo_sn1")
        .l <- list(
            list(NAPEO = unique(df_reaction$NAPEO), 
                LPC = unique(df_reaction$LPC)),
            template)
    
    if (reaction == "peo_to_napeo_sn2")
        .l <- list(
            list(NAPEO = unique(df_reaction$NAPEO),
                LPC = unique(df_reaction$LPC)), 
            template)
    
    if (reaction == "peo_to_pep")
        .l <- list(list(PEP = unique(df_reaction$PEP)), template)
    
    if (reaction == "pep_to_lpep")
        .l <- list(list(LPEP = unique(df_reaction$LPEP)), template)
    
    if (reaction == "pep_to_napep_sn1")
        .l <- list(
            list(NAPEP = unique(df_reaction$NAPEP), 
                LPC = unique(df_reaction$LPC)), 
            template)
    
    if (reaction == "pep_to_napep_sn2")
        .l <- list(
            list(NAPEP = unique(df_reaction$NAPEP), 
                LPC = unique(df_reaction$LPC)),
            template)
    
    if (reaction == "pg_to_cl")
        .l <- list(
            list(NAPEP = unique(df_reaction$NAPEP), 
                LPC = unique(df_reaction$LPC)), 
            template)
    
    if (reaction == "pgp_to_pg")
        .l <- list(list(PG = unique(df_reaction$PG)), template)
    
    if (reaction == "ps_to_pe")
        .l <- list(list(PE = unique(df_reaction$PE)), template)
    
    if (reaction == "sm_to_cer")
        .l <- list(list(CER = unique(df_reaction$CER)), template)
    
    if (reaction == "sphinga_to_dhcer")
        .l <- list(list(DHCER = unique(df_reaction$DHCER)), template)
    
    if (reaction == "tg_to_dg")
        .l <- list(
            list(sn1Loss_dg = unique(df_reaction$sn1Loss_dg), 
                sn1Loss_fa = unique(df_reaction$sn1Loss_fa)), 
            template)
            
    ## return the list 
    .l
    
}