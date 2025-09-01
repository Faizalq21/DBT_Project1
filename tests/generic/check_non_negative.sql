{% test check_non_negative(model, column_name) %}

select * from {{ model }}
where {{ column_name }} < 0

<<<<<<< HEAD
{% endtest %}
=======
{% endtest %}
>>>>>>> 6d52f862887c499eb62d0b1c3b062b295bf6c33c
