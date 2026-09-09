# Hitobito Zsv

This hitobito wagon defines the organization hierarchy with groups and roles
of Zsv.


## Zsv Organization Hierarchy

<!-- roles:start -->
    * Zentralverband
      * Zentralverband
        * Administrator:in: [:admin, :layer_and_below_full, :finance, :approve_applications, :impersonation]
        * Mitarbeiter:in: [:layer_and_below_full, :finance, :approve_applications]
      * Vorstand
        * Präsident:in: [:layer_and_below_full]
        * Vizepräsident:in: [:layer_and_below_full]
        * Kassier:in: [:layer_and_below_full, :finance]
        * Vorstandsmitglied: [:layer_and_below_full]
        * Delegierte/-r: [:layer_and_below_full]
      * Gremium/Projektgruppe
        * Leitung: [:group_full]
        * Mitglied: [:group_read]
      * Kontakte
        * Kontakt: []
    * Regionalverband < Zentralverband
      * Regionalverband
        * Präsident:in: [:layer_and_below_full]
        * Vizepräsident:in: [:layer_and_below_full]
        * Kassier:in: [:layer_and_below_full, :finance]
        * Vorstandsmitglied: [:layer_and_below_full]
        * Mitarbeiter:in: [:layer_and_below_full]
      * Gremium/Projektgruppe
        * Leitung: [:group_full]
        * Mitglied: [:group_read]
      * Mitglieder
        * Aktivmitglied: []
        * Passivmitglied: []
        * Veteran:in: []
        * Gönner:in: []
      * Kontakte
        * Kontakt: []
    * Lokalgruppe < Regionalverband
      * Lokalgruppe
        * Präsident:in: [:layer_and_below_full]
        * Vizepräsident:in: [:layer_and_below_full]
        * Kassier:in: [:layer_and_below_full, :finance]
        * Vorstandsmitglied: [:layer_and_below_full]
        * Mitarbeiter:in: [:layer_and_below_full]
      * Gremium/Projektgruppe
        * Leitung: [:group_full]
        * Mitglied: [:group_read]
      * Mitglieder
        * Aktivmitglied: []
        * Passivmitglied: []
        * Veteran:in: []
        * Gönner:in: []
      * Kontakte
        * Kontakt: []

(Output of rake app:hitobito:roles)
<!-- roles:end -->