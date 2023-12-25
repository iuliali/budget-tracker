package com.budgettracker.api.budgeting.enums;

public enum Currency {
    // all currencies available here
    // https://www.exchangerate-api.com/docs/supported-currencies
    // not support in this enum 'KID', 'STN', 'BYN', 'FOK', 'SLE', 'SSP', 'MRU', 'VES', 'TVD'
    AED("United"),
    AFN("Afghan"),
    ALL("Albanian"),
    AMD("Armenian"),
    ANG("Netherlands"),
    AOA("Angolan"),
    ARS("Argentine"),
    AUD("Australian"),
    AWG("Aruban"),
    AZN("Azerbaijani"),
    BAM("Bosnia-Herzegovina"),
    BBD("Barbadian"),
    BDT("Bangladeshi"),
    BGN("Bulgarian"),
    BHD("Bahraini"),
    BIF("Burundian"),
    BMD("Bermudan"),
    BND("Brunei"),
    BOB("Bolivian"),
    BRL("Brazilian"),
    BSD("Bahamian"),
    BTN("Bhutanese"),
    BWP("Botswanan"),
    BZD("Belize"),
    CAD("Canadian"),
    CDF("Congolese"),
    CHF("Swiss"),
    CLP("Chilean"),
    CNY("Chinese"),
    COP("Colombian"),
    CRC("Costa"),
    CUP("Cuban"),
    CVE("Cape"),
    CZK("Czech"),
    DJF("Djiboutian"),
    DKK("Danish"),
    DOP("Dominican"),
    DZD("Algerian"),
    EGP("Egyptian"),
    ERN("Eritrean"),
    ETB("Ethiopian"),
    EUR("Euro"),
    FJD("Fijian"),
    FKP("Falkland"),
    GBP("British"),
    GEL("Georgian"),
    GGP("Guernsey"),
    GHS("Ghanaian"),
    GIP("Gibraltar"),
    GMD("Gambian"),
    GNF("Guinean"),
    GTQ("Guatemalan"),
    GYD("Guyanaese"),
    HKD("Hong"),
    HNL("Honduran"),
    HRK("Croatian"),
    HTG("Haitian"),
    HUF("Hungarian"),
    IDR("Indonesian"),
    ILS("Israeli"),
    IMP("Manx"),
    INR("Indian"),
    IQD("Iraqi"),
    IRR("Iranian"),
    ISK("Icelandic"),
    JEP("Jersey"),
    JMD("Jamaican"),
    JOD("Jordanian"),
    JPY("Japanese"),
    KES("Kenyan"),
    KGS("Kyrgystani"),
    KHR("Cambodian"),
    KMF("Comorian"),
    KRW("South"),
    KWD("Kuwaiti"),
    KYD("Cayman"),
    KZT("Kazakhstani"),
    LAK("Laotian"),
    LBP("Lebanese"),
    LKR("Sri"),
    LRD("Liberian"),
    LSL("Lesotho"),
    LYD("Libyan"),
    MAD("Moroccan"),
    MDL("Moldovan"),
    MGA("Malagasy"),
    MKD("Macedonian"),
    MMK("Myanma"),
    MNT("Mongolian"),
    MOP("Macanese"),
    MUR("Mauritian"),
    MVR("Maldivian"),
    MWK("Malawian"),
    MXN("Mexican"),
    MYR("Malaysian"),
    MZN("Mozambican"),
    NAD("Namibian"),
    NGN("Nigerian"),
    NIO("Nicaraguan"),
    NOK("Norwegian"),
    NPR("Nepalese"),
    NZD("New"),
    OMR("Omani"),
    PAB("Panamanian"),
    PEN("Peruvian"),
    PGK("Papua"),
    PHP("Philippine"),
    PKR("Pakistani"),
    PLN("Polish"),
    PYG("Paraguayan"),
    QAR("Qatari"),
    RON("Romanian"),
    RSD("Serbian"),
    RUB("Russian"),
    RWF("Rwandan"),
    SAR("Saudi"),
    SBD("Solomon"),
    SCR("Seychellois"),
    SDG("Sudanese"),
    SEK("Swedish"),
    SGD("Singapore"),
    SHP("Saint"),
    SOS("Somali"),
    SRD("Surinamese"),
    SYP("Syrian"),
    SZL("Swazi"),
    THB("Thai"),
    TJS("Tajikistani"),
    TMT("Turkmenistani"),
    TND("Tunisian"),
    TOP("Tongan"),
    TRY("Turkish"),
    TTD("Trinidad"),
    TWD("New"),
    TZS("Tanzanian"),
    UAH("Ukrainian"),
    UGX("Ugandan"),
    USD("United"),
    UYU("Uruguayan"),
    UZS("Uzbekistan"),
    VND("Vietnamese"),
    VUV("Vanuatu"),
    WST("Samoan"),
    XAF("CFA"),
    XCD("East"),
    XDR("Special"),
    XOF("CFA"),
    XPF("CFP"),
    YER("Yemeni"),
    ZAR("South"),
    ZMW("Zambian"),
    ZWL("Zimbabwean");

    private final String name;

    Currency(String string) {
        name = string;
    }
    public String getName() {
        return name;
    }
}
