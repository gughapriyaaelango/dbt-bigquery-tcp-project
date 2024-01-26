{% macro grant_select(schema) %}

    {% set name %}
        grant usage on schema {{schema}} to role {{role}};
        grant select on all tables in schema {{schema}} to role {{role}};
        grant select on all views in schema {{schema}} to role {{role}};
    {% endset %}

    {% do run_query(query) %}
    
{% endmacro %}