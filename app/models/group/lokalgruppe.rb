# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zentralverband Schweizer Volkstheater. This file is part of
#  hitobito_zsv and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zsv.

class Group::Lokalgruppe < ::Group
  self.layer = true
  children LokalgruppeGremium,
    LokalgruppeMitglieder,
    LokalgruppeKontakte

  self.default_children = [LokalgruppeMitglieder, LokalgruppeKontakte]

  ### ROLES

  class Praesident < ::Role
    self.permissions = [:layer_and_below_full]
  end

  class Vizepraesident < ::Role
    self.permissions = [:layer_and_below_full]
  end

  class Kassier < ::Role
    self.permissions = [:layer_and_below_full, :finance]
  end

  class Vorstandsmitglied < ::Role
    self.permissions = [:layer_and_below_full]
  end

  class Mitarbeiter < ::Role
    self.permissions = [:layer_and_below_full]
  end

  roles Praesident, Vizepraesident, Kassier, Vorstandsmitglied, Mitarbeiter
end
