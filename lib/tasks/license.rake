# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zentralverband Schweizer Volkstheater. This file is part of
#  hitobito_zsv and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zsv.

namespace :app do
  namespace :license do
    task :config do # rubocop:disable Rails/RakeEnvironment
      @licenser = Licenser.new("hitobito_zsv",
        "Zentralverband Schweizer Volkstheater",
        "https://github.com/hitobito/hitobito_zsv")
    end
  end
end
