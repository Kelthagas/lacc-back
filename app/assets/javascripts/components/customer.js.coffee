@Customer = React.createClass
    getInitialState: ->
        view: false
    viewRows: ->
        React.DOM.tr null,
            React.DOM.td null,
                @props.customer.first_name
                ' '
                @props.customer.last_name
            React.DOM.td null,
                React.DOM.button
                    className: 'btn btn-default'
                    'View'
    render: ->
        @viewRows()