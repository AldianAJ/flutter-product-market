part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign In',
      subtitle: "Find your best ever meal",
      backColor: 'FAFAFC'.toColor(),
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Email Address",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your email address'),
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Password",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your password'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 24),
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? loadingIndicator
                : ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });

                      await context.bloc<UserCubit>().signIn(
                          emailController.text, passwordController.text);
                      UserState state = context.bloc<UserCubit>().state;

                      if (state is UserLoaded) {
                        context.bloc<ProductCubit>().getProduct();
                        context.bloc<TransactionCubit>().getTransactions();
                        Get.to(const MainPage());
                      } else {
                        Get.snackbar("", "",
                            backgroundColor: "D9435E".toColor(),
                            icon: const Icon(
                              MdiIcons.closeCircleOutline,
                              color: Colors.white,
                            ),
                            titleText: Text(
                              "Sign In Failed",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            messageText: Text(
                              (state as UserLoadingFailed).message,
                              style: GoogleFonts.poppins(color: Colors.white),
                            ));
                        setState(() {
                          isLoading = false;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(200, 45),
                        backgroundColor: greyColor,
                        shape: const StadiumBorder()),
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 24),
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? SpinKitFadingCircle(
                    size: 45,
                    color: mainColor,
                  )
                : ElevatedButton(
                    onPressed: () {
                      Get.to(const SignInPage());
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(200, 45),
                        backgroundColor: greyColor,
                        shape: const StadiumBorder()),
                    child: Text(
                      'Create New Account',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
