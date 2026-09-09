# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zentralverband Schweizer Volkstheater. This file is part of
#  hitobito_zsv and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zsv.

class Group::Zentralverband < ::Group
  self.layer = true
  children ZentralverbandVorstand,
    ZentralverbandGremium,
    ZentralverbandKontakte,
    Regionalverband

  self.default_children = [ZentralverbandVorstand, ZentralverbandKontakte]

  ### ROLES

  class Administrator < ::Role
    self.permissions = [:admin, :layer_and_below_full, :finance, :approve_applications,
      :impersonation]
  end

  class Mitarbeiter < ::Role
    self.permissions = [:layer_and_below_full, :finance, :approve_applications]
  end

  roles Administrator, Mitarbeiter
end
