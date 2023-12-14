
      
  
    

        create or replace  table ALUMNO22_DEV_SILVER_DB.snapshots.budget_snapshot
         as
        (

    select *,
        md5(coalesce(cast(_row as varchar ), '')
         || '|' || coalesce(cast(_fivetran_synced as varchar ), '')
        ) as dbt_scd_id,
        _fivetran_synced as dbt_updated_at,
        _fivetran_synced as dbt_valid_from,
        nullif(_fivetran_synced, _fivetran_synced) as dbt_valid_to
    from (
        



select * from ALUMNO22_DEV_BRONZE_DB.google_sheets.budget

    ) sbq



        );
      
  
  