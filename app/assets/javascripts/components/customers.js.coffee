@Customers = React.createClass
    getInitialState: ->
        customers: @props.data
    getDefaultProps: ->
        customers: []
    viewAll: ->
        React.DOM.div
            className: 'container Customers'
            # Create search here
            React.DOM.table
                className: 'table table-bordered'
                React.DOM.thead null,
                    React.DOM.tr null,
                        React.DOM.th null, 'Name'
                        React.DOM.th null, 'Actions'
                React.DOM.tbody null,
                    for customer in @state.customers
                        React.createElement Customer, key: customer.id, customer: customer
    viewCustomer: (customer) ->
        index = @state.custoemrs.indexOf customer
    render: ->
        @viewAll()