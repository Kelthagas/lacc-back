@CustomerSearch = React.createClass
    render: ->
        Reacd.DOM.form
            className: 'form-inline'
            onSubmit: @handleSearch
            React.DOM.div