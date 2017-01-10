
defineClass('ViewController', {
            text: function() {
            require('UIView, UIColor');
            var view = UIView.alloc().init();
            view.setBackgroundColor(UIColor.yellowColor());
            view.setCenter(self.view().center())
            view.setBounds({x: 0, y: 0, width: 100, height: 100})
            self.view().addSubview(view);
            return 'JS Text'
            }
})
