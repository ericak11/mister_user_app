Sequel.migration do
  change do
    alter_table(:users) do
      set_column_allow_null :name
      set_column_allow_null :gender
      set_column_allow_null :picture
      set_column_allow_null :dob
      set_column_allow_null :phone
      set_column_allow_null :location
    end
  end
end
