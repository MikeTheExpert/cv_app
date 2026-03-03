import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class HoveringOptionsSheet extends StatelessWidget {
  final bool showOptions;
  final List<Map<String, String>> options;

  const HoveringOptionsSheet({
    super.key,
    required this.showOptions, required this.options,
  });

  Future<void> _handleTap(BuildContext context, Map<String, String> option) async {
    if (option["type"] == "text") {
      await Clipboard.setData(ClipboardData(text: option["value"]!));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Copied: ${option["value"]}")),
      );
    } else if (option["type"] == "link") {
      final url = Uri.parse(option["value"]!);
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Could not launch ${option["value"]}")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: SizedBox(
        height: 400,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: List.generate(options.length, (index) {
            final option = options[index];
            final optionHeader = option["name"];
            return AnimatedPositioned(
              duration: Duration(milliseconds: 400),
              curve: Curves.easeOut,
              bottom: showOptions ? 70.0 * (index + 1) : 0,
              right: 20,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 400),
                opacity: showOptions ? 1 : 0,
                child: GestureDetector(
                  onTap: () => _handleTap(context, option),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Text('$optionHeader : ', style: TextStyle(color: Colors.brown),),
                        Text(
                          option["value"]!,
                          style: TextStyle(
                            color: option["type"] == "link" ? Colors.blue : Colors.black,
                            decoration: option["type"] == "link"
                                ? TextDecoration.underline
                                : null,
                            fontFamily: "ClashDisplay"
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
