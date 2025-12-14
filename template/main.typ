#import "../lib.typ": invoice

#show: invoice(
  // Invoice number
  "2023-001",
  // Invoice date
  datetime(year: 2024, month: 09, day: 03),
  // Items
  (
    (
      description: "The first service provided. The first service provided. The first service provided",
      price: 200,
    ),
    (
      description: "The second service provided",
      price: 150.2
    ),
  ),
  // Author
  (
    name: "Kerstin Humm",
    street: "Straße der Privatsphäre und Stille 1",
    zip: "54321",
    city: "Potsdam",
    tax_nr: "12345/67890",
    vat_id: "DE123456789",
    // optional signature, can be omitted
    signature: image("example_signature.png", width: 5em)
  ),
  // Recipient
  (
    name: "Erika Mustermann",
    street: "Musterallee",
    zip: "12345",
    city: "Musterstadt",
    // vat_id is required for reverse-charge invoices
    // vat_id: "ATU12345678",
  ),
  // Bank account
  (
    name: "Todd Name",
    bank: "Deutsche Postbank AG",
    iban: "DE89370400440532013000",
    bic: "PBNKDEFF",
    // There is currently only one gendered term in this template.
    // You can overwrite it, or omit it and just choose the default.
    gender: (account_holder: "Kontoinhaberin")
  ),
  // Umsatzsteuersatz (VAT)
  vat: 0.19,
  // kleinunternehmer: No VAT (German § 19 UStG small business exemption)
  // reverse-charge: No VAT for foreign EU B2B customers (customer handles VAT)
  // includes-vat: Item prices include VAT vs exclude VAT
  // When kleinunternehmer or reverse-charge is true, includes-vat is ignored
  kleinunternehmer: false,
  reverse-charge: false,
  includes-vat: true,
  // currency: Invoice currency ("EUR", "USD", "GBP", etc.)
  // fx-rate: Exchange rate to EUR per ECB rate (e.g., 0.93 for USD)
  // Note: QR code only shown for EUR invoices
  currency: "EUR",
  // fx-rate: 0.93,
)

