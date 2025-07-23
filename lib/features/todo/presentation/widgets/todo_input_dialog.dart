import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/widgets/app_button.dart';
import 'package:varosha_app/widgets/app_text_field.dart';

class TodoInputDialog extends StatefulWidget {
  final Function(String title, String description) onSubmit;

  const TodoInputDialog({
    super.key,
    required this.onSubmit,
  });

  @override
  State<TodoInputDialog> createState() => _TodoInputDialogState();
}

class _TodoInputDialogState extends State<TodoInputDialog> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add Todo',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            16.verticalSpace,
            AppTextField(
              controller: _titleController,
              labelText: 'Title',
            ),
            16.verticalSpace,
            AppTextField(
              height: 150.h,
              controller: _descriptionController,
              labelText: 'Description',
              maxLines: 3,
            ),
            24.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    text: 'Cancel',
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                16.horizontalSpace,
                Expanded(
                  child: AppButton(
                    text: 'Add',
                    onPressed: () {
                      if (_titleController.text.isNotEmpty) {
                        widget.onSubmit(
                          _titleController.text,
                          _descriptionController.text,
                        );
                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
