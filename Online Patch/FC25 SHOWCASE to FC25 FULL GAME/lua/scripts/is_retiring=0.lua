--- This script sets isretiring on 0 for all players.

-- Get Players Table
local players_table = LE.db:GetTable("players")
local current_record = players_table:GetFirstRecord()

while current_record > 0 do
    players_table:SetRecordFieldValue(current_record, "isretiring", 0)

    current_record = players_table:GetNextValidRecord()
end

MessageBox("Done", "Done")
