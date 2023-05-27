import 'package:flutter/material.dart';

import 'package:tkmp/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "BIO APP",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> names = [
    "Resume",
    "Nothing here",
    "My fav books",
    "Come back 2 years later "
  ];
  final List<String> messages = [
    "Trust me bro! ",
    "",
    "Bhagavad gita\nRich dad poor dad ",
    "You will.."
  ];
  _launchURLt() async {
    final Uri twit = Uri.parse("https://twitter.com/abhijith__unni");
    if (!await launchUrl(twit)) {
      throw Exception('Could not launch Twitter');
    }
  }

  _launchURLl() async {
    final Uri link =
        Uri.parse("https://www.linkedin.com/in/abhijith-unni-209892212/");
    if (!await launchUrl(link)) {
      throw Exception('Could not launch Linkedin');
    }
  }

  _launchURLgt() async {
    final Uri gith = Uri.parse("https://github.com/abhijithu1");
    if (!await launchUrl(gith)) {
      throw Exception('Could not launch Github');
    }
  }

  _launchURLgm() async {
    final Uri gmail = Uri.parse(
        "mailto:abhiunni9656@gmail.com?cc=Abhijith &subject=You%20are%20great&body=Dummy%20BOODy");
    if (!await launchUrl(gmail)) {
      throw Exception('Could not launch Gmail');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 150,
                width: 150,
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gKgSUNDX1BST0ZJTEUAAQEAAAKQbGNtcwQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtkZXNjAAABCAAAADhjcHJ0AAABQAAAAE53dHB0AAABkAAAABRjaGFkAAABpAAAACxyWFlaAAAB0AAAABRiWFlaAAAB5AAAABRnWFlaAAAB+AAAABRyVFJDAAACDAAAACBnVFJDAAACLAAAACBiVFJDAAACTAAAACBjaHJtAAACbAAAACRtbHVjAAAAAAAAAAEAAAAMZW5VUwAAABwAAAAcAHMAUgBHAEIAIABiAHUAaQBsAHQALQBpAG4AAG1sdWMAAAAAAAAAAQAAAAxlblVTAAAAMgAAABwATgBvACAAYwBvAHAAeQByAGkAZwBoAHQALAAgAHUAcwBlACAAZgByAGUAZQBsAHkAAAAAWFlaIAAAAAAAAPbWAAEAAAAA0y1zZjMyAAAAAAABDEoAAAXj///zKgAAB5sAAP2H///7ov///aMAAAPYAADAlFhZWiAAAAAAAABvlAAAOO4AAAOQWFlaIAAAAAAAACSdAAAPgwAAtr5YWVogAAAAAAAAYqUAALeQAAAY3nBhcmEAAAAAAAMAAAACZmYAAPKnAAANWQAAE9AAAApbcGFyYQAAAAAAAwAAAAJmZgAA8qcAAA1ZAAAT0AAACltwYXJhAAAAAAADAAAAAmZmAADypwAADVkAABPQAAAKW2Nocm0AAAAAAAMAAAAAo9cAAFR7AABMzQAAmZoAACZmAAAPXP/bAEMABQMEBAQDBQQEBAUFBQYHDAgHBwcHDwsLCQwRDxISEQ8RERMWHBcTFBoVEREYIRgaHR0fHx8TFyIkIh4kHB4fHv/bAEMBBQUFBwYHDggIDh4UERQeHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHv/CABEIAZABkAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAABAgADBAUGB//EABoBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQb/2gAMAwEAAhADEAAAAfBRjPkLHiSF41o9pxO1l79+LqourBg3wXzfB7zxXRw0lHvI29D3+Z4bq+/fnvynV7GnLTmp1VmuRR6BCfOUemFR5TH7Si14Wj6ItR8lxfYPL7T4e4HWO/6nzPfw9JrqOPN4Mdgv5xBYHnXLAOuOB02Qm7kl84LElS5DZ2OD6jP3elj52+O96NvIb3eT9f514+M91d6pclOkNz6spEmswq1kgRSQklLm7Dsx3AhNZpXeBcTwf1HxG/Pl7PH6D9NuHqzV5chh5ix4CSyMrFoDO5dbg2M+VDYwVs7hXeIWe95/pZ+/0UBj0Obor1vzfSEjFkqZ0jTTNRoiohSBKQBl1s5xyDSDER5uaiJfL+n4+k8XfTtr0fO0X16+AsePgUsWkNhHULoGVmZbWG51y0vcydTXO3na9h8/qYepl9RbLVjs5+7F035vXWHJMYVposzGLtVbE15fQUNKtAVlZlObXl0yWrRS86YI4fzPf81d7LswfdyFLbfNIzmuWtnIKbCFQuhWO3Tve+N7mz5a3tdXU1xKr6VfWy7s9t5y9TOmuJ4cPY4dc3ZZLCy0ZaAkTTZddk0qWhOq4EFzaM1xIwqRTbS4rLK88yOCL7qtK1w8/vSs/HZfa+a383AWOnKC0QCbi72eX2ozNjxBy6pHYlWdTB0cfThCx1WStwHmfR8N4dW9XNGYQpgUVaTS0XZK2ltFLFptpqIpW4UMpNdb0Vkj12pXWqy1YFQTzva83v59ck288kRDdni9SenZX1c69HmMGXlFwSyYStO/Dsw9KwBp6EkUmlU2uEYsUI0TUwlJHipDIglQAJFSAQ5FNikU5dfNrK+/LpDU1dk7EGM5nnu7wenx5ANOVosHs9Tx+ry+yuDpV4d3NInZ4DspGxUhq3c/fh6RNdcdF1IQWPo8nsvJ3QmrSQYZHVSQlJGAAMgjJBKCKhTILPw/QUPLn7adIppx6Vo4ZGcDl6cnX4cCx5vEvT9BtTZwfR4V3iNuQt1Pb4BIlQSIO/ocnp49pLpn2ImhA5vX5fTIltVpZhJStFKaAjgIQqWI1JIIBg5VXrEgjtYdKaCMtlbD05dXJrPgVlevxAsAjtwFV76/xPpOT29uKvXG9XPero8diorJ4sG27DbOvYQvz+s0MHksdwUXAYesjeAlKTAUhk1rKuSZAAIchXUSRo1Q5QmoWVE6/Neh8hrx0pF6PMixRmLA0+28B6PHt9OMPGy9K6KdvGMBAkQGgg+j0OL18PTsKmOqFSDRYDFIN4jDMhVBXAUrZU5tisCyQkAikBWwpW6ErVfUTR5PtcLp8pkiXzFQoMFA3VRLcIqv2LAphkIGQjMEB+tx+hHVveuzH0jJEzIQCyBHRR2kFXFKhlswNVa7BUsrhntcvU+Ry9kUSWLYJMungXz8nNF6PIKhWFQpRChWYolsoVV7mMCRCQWMRrDAllcb7N/K6WHp3RWnoMCgSIBz38tLp2YdCq2k8p607M+muldGfOs9C6FOGjLwtVcvp65Wtrra1Zm8jq5nR5JAWsikVOLEVkAK2AicEUr38jEKTBqTBANGlDLSG/nsq7z8vXj6WpEEbWNVaM8fs8NrpZvDbq069TuddowUFddeJcLodrzXQObos7Ty5a5zq5utwcnKvlkAvnKwDCxFcWRXBAVJIOCAf0ItHCxoCxoIBgxVcOa0sVwiuiltXPSb9Jp49WfqVeP6fpH28vuPXPZsGQqpzesxPl+f63h3lgmfRXD7Wzlas8OR53Zi18yAhxAVHFKlKCk3FZXckA5JFUEgfRSxcCOoJHjah1EqsKitHUhK7EIrrsRLRVXvz9PTpOjP3+Xzu+B8urv1t8jqtoUZuf18QvJd/Bq08rHoo4z86hZK55IAgIGqsqagg0AIVgGAJIUIQH0po1IQkEDqIIwBFYVnWrgipLayaUsqJTr8rs5e50dFF0etVUc4a1fClt1Y9TS4dmUOJl3cq+XlU7MV+AYIZmSShJHSpYiaggtYQVAYMSQYhA/ppjUSGFKrqJEtRzWGV5ojIZrW6EVU34jTR2uL08vqOscHOVdvLfVNXUbsQanr8reXr8/NZVXwu755x1/M9vl152WLDyWggEQJxWRsQhUAYUsMGIQER1H9QIargYDAYCRLFc0h1edVdlZkispNHL2eRfp+rv5/Wz9ijj+shK68GnPXp88sGfzfdvrLkbrcBT8Xd5+sa9vnmvn7BqePHaAqZAo2WQIIC5JBySDEIBYSP6cQaswwYVwCI6uK0dXnTXbSZpXbU48353tcJ+p6Ht+V9fHp6tGjbj002abCaDcosdG/OHO5vS4tLB5vqcjTjV0uefQMkeTGSCYQIkkHICMQQZEg4CAhkH9OaGtIYRqCAVHSs0R0M66bqjOuq1HHl/Oeo8w/S3et8x1I9L1/R4XWy7Nz57FNkrIlxaeQ1RyK+feXNxsL55fReZbgBHmmSIIEAwQJIBmAgJFBoCMwQr6iwNWZAEDKC12V1mtb1vNK7KyK67aiPP8AnPScGu+oqF2a9nJhXdu89a139Pno57fAgc5RpCMxsE1Xqza4ztkE8REAGAoEkAyAJIAgkGzAlAFSvqjBqJJACujBVYjzrR63klboTXXZW8+H5z1vk33VAhd5AgGyphWPQai40O5sEjEMCpNKXRjIJlzySBJIOSBBVlAiACQwGSFAEF/ViDckEBEdHIQoSldldZVo9ZCVtWRT5H1/PNPJy+leusgKhEHJI01iPU2JAKFrlEkWMIVsmZGVsBlSEgSggTZQorHrsHAwKWEFfVzW2uTAQChQQQo4WtqzMVGsgVGshampM8vB9HSdHmB2KF6OF9SG2VL6hiMzkXG0zVhFCiCJltLjtSLSYQIClZJCqAJAe2qwckA5JB//xAArEAABAwMDAwQDAAMBAAAAAAABAAIDBBAREiAhBTAxEyIyQBQzQSMkQjT/2gAIAQEAAQUC3UoeX0sbsO4TghyKmBj21UHpPsLNaXKGgqJFF0eUqPpELVF0+AJtJGE6mYV+DEn0cK/Dpk6gpij0ymKk6OxHoz07pMwUtPLHePz09vP8xy9+G1Ttcm8qn/du6e0BpmwoowRMGgNKk5VVT62zxmNyCpKOWd1DQRwgNC8Jjc3FiEW8Nanx7HxsKr+nNLZI3MLfFFw1ruC5VU2/Fiqf9+6nm0qnjc4vxGyN3qGVulOcAmEOb1eIaYY3SPo+ksAjiawNs5Cx2YQs4YdbCLVWUkcsc0fpqlOGsKnfx5PYKph/n24UP7I3YbPIXGl4NRpKqWnRTyxxx9S/yN6RQekAFm4+W4rXzlO5dcpy6uzEsLeA0qpyh42YWFhYTlS/+jCxfCwsL1HqN3+Rr/bqClcHNkOF05nqyhvCxdgyRuctOF53OXVY8mAIt4qkPG/CcqQf7OFhYWFhYWFhY90YQtN46XxIsoGzW6jixNsWzbCcMG2VlZWMrqXwgCcOKr5bcLCwsJyo/wD1YWFhALCwsLC/7jCARCmXTm+6wszwibZUc8rqhYQtKOAiiibZ4qn+pLCpPE37L4WFhYWFhOCoh/s4WEAsLCwsLCYPewIJyn8dP+FymvRem8o4UjiFB7hYoJ/izgjaX4FrgWHCkeidT1hYvhYu2PUWNEYwgFhALCwg3Kjp2kNp4gvSjXpMXoMRhjBa7E2zFmpzJHOA4e7S2N2oJy1HOSbuu+zAEWNKfSxOUlCFJTvZvA5HAHgBYWEAsLCgHuG1/h/D2nLRYWKbwLEZQGLSeANhNnI2Yhd7QRUx6H7WNycC+L4WFF81nY7xMczQ/BC53v8AA8WNiiigm7HKsdzsCgawt9FejvgHuwsbHninZqlAxtKa5akHLN3+NrinHAHKahcqZ2kPdqdtpGkrGFM8Cw2w+dsvIibhqG3SsLC5XK1rk7CiipCmJqGyt/XtgiMjoYdDKgP0R07sbofO1x9w8dnO8rCcpncxIJuyvPs29PGF6pJJWoDfD5tlFyc5SO9zfi36UiqA7VTHITTcqvd79g804xGnnAawb4fkibu8Yy8DDR2zvKc0FRs0vcgm2d4qDmW+VC3VJGNK05RhyngNDuChsjPuWOTZxGI/2WHaKG03fkSuFmWqDpjccnZR/v0JnClkaslymbg7R5Zy1f3CLQncPactQ7RQ2m7x7v4Uy3UHYZtBwoZpnSOJw3JQbpFWMb6d3KxysKRqj8YsD2XdjCem+HeW26g/Mm6B+iWPTMxsWkaMGSQvO4HBaci5GU0YthY7B7TvDE9Dy44bM7VJv6bWsibJ1GBob1LVJvKpnd82/vYPhvmRNVW7TCTY/RhOHtPeNwdznYQRKCegupSdjN89lvBYUOyNsz9AadTfCB2OOE3m39CcpDpbO/W/6lO7gbjcHbUnU+E6V5HhakDZxy48NC/oT11GXH1ozhzHZ7MnBaeLSHS0HU9ai0hwcCxwWohGbAjlDpJPAKb5U8mkTP1v+tC9A9isk0ugJ0ZWVVS6zE2xR9pjkDhI3Ir/AFWHpDXPdIeQmp7sCtn1O+xFIgVndJG59VlrA+sgapqzWWyNBE7cfkBeuCi7KDtD2ODmzRMlbGxsTHoFagBW1KJ7w7bThMmQkaVlZsLV1dFTh9RUVLoKcuTaRfilSMcxYyjkJkq15VJKCQUVIU6drTUVRcs5+tjdlCRwUcyYc26nX+kI4pZ309NhRNAQxaRupSRKRpCdwdSpZsVhKzx1CbSSc/cO2kflV9T6bIKczPjhAAGEXgLUVqTCCiMqWLiphUrXMbTQEJ0uGMd/jrHapvtnYbU5wZY9ckTcBTFy94IfJhzpHKIPCYE4KZqq28xAelNyZpvTgJyfq4RsbnaU04MfJYFpTmoMC9MY0BBqDU4KQKoHLD7JXNap5NZ+kO0bmxX9gCZZ5wg9q9VOlYo3arOUiqRxETplcSfumxTkUUz5RJqypeQzSSQNL/MIwMop6qPEbsOnZ942KKKfwIeTEgsp6Hy/n9YtQWU9TJx0yua0seNLvsYRRsdjvEzsNpjlB4B1nT+fGXf8j5ke3/pvubUdQ0SxS64RLlSHIquFTuyyq+X3Cjd6q3aWwO9rw9VE73UzWcQOk9OPkk8O+T/U0OpJlT08zWaAwFyrXYbBVGNSzsewfaNjcqpfoY+Vz5IneyKRuGuiT5omKOYSOnkEEVHN68c4wG1GF+SzBqAVLISsqvflyCb4+ybORsV1SRf2mfqZEzKZTc/iNJigaxSQMlbFE2Njm5Xoxp8EZTomAS4ClfgSuy5DyPtlFFFFdU+apD7oCoymIIXKcVMeJyqp3BtF8vsG5RRsV1UIqk+UCiTENjlIpSplUuy+0Pn7Zt/Siuqj2gcxOaxQ1TQqadrkx4QcFqWpZTiqmdjFJWMJnqBpPN4vP2zYoorqfwaOUDhMlc1NqnhCtkCFfMhXzIdQkAl6g9wmke83CCj+mNxRRsbldT8bgUCic3wtKxyRaPx9IbijYo3K6kPZuCygi5ZuURwQmeO6O4dptWt1RO47GbC/lEpoz9s2NzaQZFVGWP7AQCzsaMI2HbHdNyjYoqojD2yMLTuFs3HO0bDvHdNiiiiijaaMOEsRabaVhEXyhyg1eLG42nYbDdncSjYoolFZRKJs8ByfAF6C9NFpTgVgrSgxBuw3B7bdoC//xAAlEQABBAICAQQDAQAAAAAAAAABAAIDERASBCAhBTAxMhMiQSP/2gAIAQMBAT8Bzw49Y8EWpYtcar8aEa0C0C/GtFqtU5QeGqWQMbZUsu77Vq1aYVatWvT5No/KsHEv1QAQ7OzI3yovDV6hKb1Vq1atRHyrVq02RzfqvTSTH5xynkSAYHY5A8pg8L1A/wCnWH7K8gLgt1hCtckf6DA7ORxH8rcUuY7aU9YR5tAKlS40LT5KBoUrKlPlBN6uODkfCfC13yuRB+PyMj5Q+EAqxxvrmTygh1OSghjmP/meONnJ0QaMhcf69wrV9HJueUf9FeOHGGttfjB+enG+qtFN6Ds8WmoImgpXbPvA8lQNpuHjV2eK/wDmCm+ychTu1Yrw11G1ByNx4XkqV2zrxaidq60DY6jsVWeY/wDWunEl1NFfnjB+evGfbfbPTlP2dilSHbjPo0h1GNEVYV5nk0CJvpSrqDRUUm3RzqTXJgvD2WE4ELZxcrRdQU0m5zSruUx+pTJmuWwVo+UxpKa3XGynH9VBPkDVLPt4Ga9k4uk2VzVFJs21FDt5KDaVYe1SS/xbp52PQdqVKkenp43dWLW2eS3VyfJ0GB3PX0uOml3aZgd8qVmjq6DA9k4hhMjqULNGUFuFeHSNag7ZSLmx7N26DA7nBxwiA1RnwjCLQ8DDo2uQGqkcneRSI8qugQ7lHHF+ig6lOKeaCPs1k4OOIf0UL9SrvNp8gxL9cUqVKvYKKK/i4n1xsUZHL8zkZSflB62Ux/X3SiiiuIfFdNVqqVKU+wOpRKOIZdHJpBHZzqRKpUqzSpAYtXk5tQ8hzE3ksKErSrWwRf7n/8QAIREAAQQBBQEBAQAAAAAAAAAAAQACESAQAxIwMUBBEyH/2gAIAQIBAT8By7ATHypTtUNTtco6hK3Fbyt5Q1HIarkzWUp6HC5HAT9RGwzplFRmFFYTsfOAZZgcMpxx8wbDrLcC0qcOKk0NQhXcUx88D7GgvpjLjCD6O74hfT6zqPX6n5R/ai8KLhN6wek9bU3OoPAwf3JT27cNy7waQo9sotq8c+n1xOF4uwTY2c2wFIwAmiOQhFuQFsxChRgNQbwReAtqmFM5BRwOrTxuuB4nWHjctqjAZKhN8blvyHELtNF444TuqjhPG8KMwg3zQFsC2LYtqPllSpw70nihQoUcMqVNPl//xAArEAABAgUDBAICAgMAAAAAAAABABECECAhMRIwUCIyQGEDQRNxM5FRYIH/2gAIAQEABj8Cq6VdMnkXC9U2CtAV1xALqJKt8Q/6u0f0sBdo/pX+ML+ML+NYXSSu9WiC6oaNW7DW60hOaCmM7Cyw5m52HFF4XRPxhimIkJsNqH916U5WZWlYLUEIYUD8nUU0MLeEbXWlCb7UNYkIXV8K0mKIh+1rjz4ob73odjKvNhIxRfXjQxb0P73jT68EDeh3jFs2C06bbnob0O9fNVpXVk5G2VcLB3bDY6l2BdoWFhPp2T4HaF2hdKuPIHlMVbxtI8xvGMZx5ZKJqffPmGpgmXSbrrjJ4/XwuK2qAm5zwZqNIAQlfhBSah9JwupdPEtVZCHWVcy9oVtwDVgrUFZPEr1vwBOxojt7VonK6hbZbzjyQh4x6n4Rl63NA4R5+l7TyvUSjEeAEIyryutMOKHErL0tZxSQMcC7WC6ogF3g/pMMVOE4TRBaYBQ0J8u6sarXiTmItPNWijKaHzsq89EHctUT7QbE9I4K6YZWv5Fai9Qik6PBFXnZYrCEvfCPRhY2HK9cRcrCYZrvxNxeVqiFq5IpuF1fSZB6Cf8ACMMOF+QGbop+CCCcL8bHUg3xl0NX1QRAcrC0EsKPS98CYk8RQl9SYLUVqTq8rTbg9AkBJ3lYJogtMIaWFhW4Z5jjxyt9i5WVbibFdxXcsruV5XPDjkgeSPJnk7/7LdW4D//EACQQAAICAgICAwEBAQEAAAAAAAABEBEhMSBBUWEwcYGRoUDx/9oACAEBAAE/IYooqEFFm70h9TMwTJRQgMZWRZcO0OkrGaIL2aRisZGwIRaThf8AOHdwr6P/ADxicBZHQR0EFlsm1ynZbKBWZC6ncJrsvclMoooooagnV3FFMooowmWE8sFZWEZKE0NcG9AtiMWk9eQj497EjHQcBKhyU8UKQS1YgLd0YfQ0vBp6FHbHkY3GgKtWdtkzNFFQoQTAMi+pooYtRB7jKdEZK3QnIJsmTLHaGULSts+rIKvgmRV4KPAmJYl4UJWB1oUCyUxsWH9AhlqdlQhrbJd7PhRRRQ0Kf05or0U4IkxrsTiLwBEiwoUaVrsSVZoZqudBFH6lHR4Ci1ELUOUhqRTsU3Y+nhSC2gwkIIdMWJKipHAho+xBBLJUipkVVBtW4rQdWWUwGroTlPUQqFCQoYyzixGlDdrEvIquhUMtQ6GdAacCkK3QgqaKKKGFkRBNBcB0DK2U7HQoxPmXoLYzyBU6hBmFPZ4FWx4UM9RZksUs+5bIdLs2aRUGiiiiuIIJ/WCh9JXxH6lSrOiCg10JBc/YtTEu2abR7an1NjHgdwNCg3o7CzG0aL3BmKKRXo+km0PoM8WNt6suLvCo0EGtRMCYh9jwlkyQYFJSVPBboPs1AUJV/gzwydhh0FeypGfA1UbobW0ahYdMsHQkfQQoSFBRQ3UXTIII8C9Ia+Gbj2pFozMMa0Ew+RikUMV0KELJXYq9HY8SdCUiecGSSG5ELRpZVSh7KMSrJUKXgqaQiyHQRtMeLCiihIoo1CmFDveFdhQFlILihLhvGWAVIeRk1NiUbIRgotAqH9ikzvQx4GReBiQaxgo9VGY7gVFDrQl6hQk/EENAhCz9MGxDkBaiMwzHQWubQPwPUMQobCdwR7LNLLF7cfYpSGuxlIpbEihISEZ8DIvsQnzQ0sWlIQpvsTWynkQyh2WxgoZQ5IqlyKTXGhkziX2eBKqdmlYkIJQprENRgSkaJGeBQ0KnkmfYvyLLob2qlxN0aGIbFQoKaAtcMVChOfkwxMQxhC4dEJw0NPyMSpvEFCUPQt8HC3L4mApfoyzBsS9HlD1xp2HoC3BcqcinCVPIgZCZtWNiL5qo7hyz8hmNIfJQxSuQvhZohoFLwPwIeqcrPR+CkUXcjbYVCgpXnhQ1HkdcWeB4QSolgSoPiO6x7ljcXBxKwmzPZZ8C3CtiOuD9KFyWWdimjWTvxlVDuhQUULUoc9B8TZTiOCLQlgsGP7G5rtG1hTJqNBjVsZY1uFKMLDq4pJQz6Fuil6RQcHeodlwtzqaDj8HJUYjGdjYRsWxv0ObGNbCZDRbBDovIcyT6LjuQQJDCmtCtVGMpnon8Kizclo6hw9lQTuBdjY6PosPikuqHpAntyytwcLZVIKWxIUOGgYKFimZjEU2JDvofSOuVcJuOLlmYuxsfCyzScP5yhtNXUfng5YZWYuF/IfI5qKKkNjfOAsvhZfsbL65vURghRUuc2Li9lg9Hcs1B8WI0bwwYy0sY+Nwsbh+D+pWxPqWpfsuUFxYh4ZlngxFohDTHlZYYhlIVtYb6GFLiWNlqW8GSxsbLLLLi4cf6KjEsspyOFD8FDqXCckp1YtYh2N9iCzAGkOqNig2ShaOGNjY2XNziac5jozwgIVSxQxh2LLGLazHWGKNUK8mGjtEVYxQky3BCnD0P/MRY2WWWWWXwrHD84fkMWBTXBytnagUVMljHLCLIYbMiLQzIp3ZbB8pBsRgXUmTc2Meh7L4Md/Ayo/OOROmMurkWYssUmj/QNjOrwTmULxR0gzXaQnsNQ7AlMgGxiI28iDMMS94Y3kcsctrl9jE174MY9lixeow08i9hOGN2NSZeEoAeB7Yd5iNqaGHRYzTKpRQDyINBF2P1hPoQ9jO+DHfw1P5P7BjMGYsuzSF7dBWRdIVb5GQj2xC5ENQNoWGrSo6YfMXfY36QI2JGGXuRjW5Yxjh83NFeoWzBUsxJj8j2ORi+bkeWRVk/wSljKrF4RqtDtxOAh2row2kWG6ZhnLKJN/DD3D5ZlaFZmKMmTAzEXDgysWJV4C0YKgLsHpTAUMtDKyYDCNp3kU+sxUIrvQyD4djGPn1Diiiii3gsKDHJ0PyNwYdIz9BPga2NYNXQjwegwGAStDCEFw34M+HfDvgSn8HDhlihwahVjvEKVCOok8Fm3gMZAoY8GsMwsUU9of8AwsSKKihwxnuy3A+w4/hHWV0AMkUwXJgoZqGwSa/RcX8PcozKl+bKH9DHGg+AYEyUYFN3C5YOxnI0tsybGtbGQm2UAtEi45mOH8HfKswTgexxQZD2YDKUVdKCq+9Fts7HQKFrCxMhSDkFNHscrBF9hLDILJYmj4O4cuXK45h7HsdyPsaHEIPbKqBjMMdcNaPbiCb4FrBBuo/DuKn0hMXkqxDBnVwU0+F8nqEKcVqH9Q4Zi4oL7hRqITRjJnadzNYsoS4YaBQzEEtSMachViY9CrlmEfsOafncIUd8XLaVhl2GthNwPwE7BRW4OyDIRqQRsh2XU6COVEVC9dlm41I04WP5EIQpaHsehyeEiuo9lVDELFVyUGMtBlI9gxUPI/BL0/4VKPRU0GM0kccgbJbI1RrIocisjKiwXiMHb/wI6FsUIyNe5epMfpCxiFoSFQh2Z5cankp5KeRaV2JnShsVDDPYza5th8DfNClGI/ZfYxlB64HNEOVh7q4GyVBWmnKZ4KKnRaGszs7GkYFtC9/K4R7HuE98fZ5SOzQY+5hpVs7HC8CKzsgfpWChQYUHs7Zfw/o/sXDBaMcNIORjNy0N9UdjMDhh9bGoRoSFlm9iHpAgX3xzyeimJDhi4sZ5Qx9jgyhHQYHytZ2eR1qNtCtKBhKvh/ZeoVz7HfkXF7HwGPuDLJGAMDPyMUe6j9LMupDfQhJvgGRRgqOvkLi/HA9yZlalQ95T6oehXJPoQ9jfdRUkdDhFVnXwm38H1N9jlg2PIaRhs0YZsYm0aMncWLYHYKhjzwajG+J83M6RctwN2YPvIZDCBmhsSUllrIss2XQl0aDR6CzWh+2KWTqLGMR7Btvg98HHkdcGN0kf/9oADAMBAAIAAwAAABBBa2JTPETBXRQNc1/2aAla2y0YaPIIshIQRN5xAu+wcE4w4IQAPMrpD7WFYofTTisgyRgJ5QXTB9ucklRAx8pPKS5qlNBQseXUFzWEoRcT9ZABAc7YTNkCjtglnFtMUm09esISUTnPNNXA0XyWJA2BE0VCI9oGk7dq88/h0AFZHWNECkwRGIlZUTAsoCCu0CvkjmEoOxBhDQ0mCmESUWfnyVBjFXSJNuKAgXQFYHzgQRELGDzRwQEItJqKU1VVkEgxyC0LIVySjnTrQYNNUygXENOBRwwmIqWgBUadPO8ByJXMNNvEN0UVnPHOa4qJU2RFXcP4m4atQFFbKA8UHtBDjuFE7pb9CD4YghTC4IlFENERVJ0UCdSRJnKbgBnxDz9UmQmGhhG0CvgLIiUigFgRPGQdHkmEgvhyOLLqwAiBFAXgI+uOhzsXGT545I4SILiZQBCDCJs+MNw+puBP0qo5uoACIAHSjsvLMEkJ4IIlMD64bIq9jBTGCi3NLuXYAKpklNAYIIbYKZYmSxRUcoaEWAiItksMZ6r7K7547ATxccq1nRiuEN/6W/e/dNvPtZRTUpBRnUu6yBAOFO0SGOJ9vPMlEGBkwik3OvuFkimj2daLO6Ob/8QAHhEBAQEBAAMBAQEBAAAAAAAAAQARECAhMUFhUTD/2gAIAQMBAT8Q222zlftkPqlp9fLITCi/b+cv8sySYovjIhhLvykR/vcvv5eD4L5fg5lXMDxemROQQmHxPuTw/wBRk+f9SQffTF7QeCdramwN8dttsMvXg8Tg1IZw+P1ysj3Y/daLxUPAQpseoX9pwvgHkXt7cX8x07i9eAgRy7bFYEMOBhttnLLPwB9dvgFrII4Xrxvr08AzM8vb3DzdcbFP2z1hlzfrg4dMz1jDJ3sLQ4OJABKb7twbbb1PQZ08GzhLJZaL1hzaRlq+4WHWdPYczh4nwHmQP74Fvemxx8G3o388NjwfAzBj/nRBHTnu37LwHrabevJNvAVtOsEEEU8fviE6Q22wHbQtPD2PvMMife9gzfx4EUoQQSWdPuRnp4G4gxvk2TLZEHxP0lPcg/CyCIEFkHhnCcGNGwIgkvQlzNmnBm3XpCOBwPEWee8fnDMxZi1P2/I8R1vAss4bJ5rH74PFoqLxHgI4kzw2WfIghFxYCeuOYsQ0vjbMP54jwEceXlkufbXM7SwMi2Q1IxhaGW3V73AWR4BHWMZiBy95MnvqbaNot7WWWeJ4jy8we2T7k8we2SYcXvZ5gEHmmenIPxg/Gx/b7aGOBlllllkEEH/BNX0k6nq0Ms5llllnARx8MW9l+W6PBs4dvB54lnRZZyyzFf5fq3yWz/sj9bf0TfY7llkFnP/EAB8RAAMAAgMBAQEBAAAAAAAAAAABERAgITAxQUBRYf/aAAgBAgEBPxB4g1eGnJBzlXxn2sf+4v7n9mFThnITkS9KZPGO8Q1fOqzR8T0LsC8WPRaWjG+TyQhCDRcXDmKN5mtFiWIp9POlJko9cDwLKDyuxJ8Z5Xrc+8rQ1iC7/fMdHvrniaFiYQzHJD45To0yLK0JFWGlFvwTDVXP1/BTNaoWYSKZSqfgu7p7R04Ws33JCTTR68RN0wtKxKIpR7mqQIQhCFMQhKVJgShRvogiyg5EIV8Gq9OCRF4sZLvNw+UJ8jb1hPH5IJNV7HDNz6j++r6FpNcJ31ryYmY4IO8jn0QS0vStUgnSg+Xjyx1+e8JdS5s87i1Y1wOMqhy9w+1aJcZTj/EheDDjtpdCYisTPOJ0TC6LhMbKPcJE/MAeXu//xAAkEAADAQACAgIDAAMBAAAAAAAAAREhEDFBUWFxIIGRobHBMP/aAAgBAQABPxBLBL3wR7EKEd6MuW79k9zo99yE0Dtbndh6haY+Jg8u7wkQG1ecj1P1haKGp6EKzPKUS4v6SDZ5vlTL/cgsmvdpRNZ9Bfen0jNPvqMdb/c8Rv8AF+NHTSKXlLBq2NwjW/A+uwWp8Dat0hhisMtSQ+Qng+MhT4Egsid+AX2SvWOgvwbZ2PMaZfmIpB3wIwpPF4HMPM0TrEOp+VUbDSX0OVv9jXqT6QtcHEmj0VUg/NLSxCOEaE527R8KIbelI1SXlUViRXEhnb0/KFufW8KIvQtoldISZtvW/I1o1yPic8H6A/3wUJdoS5F1WvobRr2jMr++OYwIbkIFRQeIf0PjabuDebsLW9s9IV0ZekQe+iTGFfLhNeEEoGh60WsdJ0KyYuVlMnOjQcRO75Fo0U4q2jh8NTp9IGKrPCo2az0aISj/ACC7fVEqJYIreBOYvgdXYJr/ALFsk+0mZ5Bw0FuvDGiLULZFglotl28EOBLZ7P7Pos50j0EFpZ2N14eYrtnX9/4ZhP8AUSgipMgiWtQq4dAh3MXjNIQm8F+MEaJ+p4MD4AigsfI5oxi6rKRtr9kutEUdWLfUMOMOK1fkkGI6CSFHekrvCA9ISLRvBsc8iXB699jivTPEf6o16Bw6Q6djVWnWFZVTCscIL+0ZBBLSURXI046YeHKmovUdTIsC0qPAiGgsZTFlxF2Hw8UUg4fwVWB79I0bh/kmSUcLODrSmNYXmHD6FNx8wG0Np5H5DDR4DcCXyrPMW8TpV27osoXEuoioHrjgyZdHWTfg3kEMAgKlRYYXqFhVxmYqiAXYQg8cGr0LKNRMTRs8CPJDdO+iOqLqi6/sTk3o0dCFDnYzdEmNAi6m6Q9vsiJpfAbYskYEoXEIIJGHscIOJhirjeCDoH+A0+BROH4xR72a2+qSBmJofa0x21XyLQsYhMcRV+CXuY/yRBaSvsd0ifl0MNNtqyUSnGLFsW0LFdHXokLGJA3vmhIaYu3o26v0b51+hzSC/Bl0Lj2MH1H7xmEwLSr9uKbR40KYxKgKML9C6rX0d478CCGfaothC+EPdIvob+x+xLqrq6U07YLUn7EhTv8Ag9IVPAeuMLdF52+jYquz8ndfZB2aE05nBl/gJslwddQ0iG18mng6LVIatzos9Dmn/ZDufoV934Rpn+B69E8o/kQXTOJ7XoeRTVjx8xdpt3gfV5C4jEkFsTNlJLwpys+oVX7djgXobjAta6evsSMaxPhFKIXtEEN0jmm37HB30L5cCvNdE10GA9bEaE1wY/Qlq6Lf2Bb4EtwghObWI3yQswZYErd+RZ+Txghkher/AAZ4ksKuDbno9hPSNj2kJIzSVW8m/wAhU14s/Du4j75IzkhweMSEg6GjTQkQ/Jt07ECF1pCaUnOyEJKTKK0d4v2e9i+wf2FPgzpsNWFQ9DU4Lmh7uCQvjs0rxM2PEJ6MySDsvQ12qN8YmeS+BLwar5Hwb3i6MlEXWPhaJq9CIXj4HQWQ5vkh0KmxrH4LihuVBxL+yfO/HFTsmxK8EqLGYqR0FskZYJq+0RVBCUaI0Qgp3xUnwP1H0ZKSug1e7+h5SpgxoafRfA/j2PyYw2mCOnDVZIl8eh40NwTKwrtIR2r2g06yiUsNL34EpvIhehZ0d3wE+PwUF0E9GzEUTorim8g0Pho84W8HnRPxxYzVpEFCwvIaUhSZVBF4EJE4rH6IbGWIujG4XocFhHYDpmk/sWsWsQz2J6JaNUh0yXYXWaNLCiR9MQ3uF1pYIt08nyJE9jnk0Ki0pcWM2zpCph3e0bdQtvteBwTR6hDRHqBaPFaUTLeySeSX97GpLzPO54P6X2enTaE9wdhaqF2H0afoJii7G30Gjt6JnVZOfCPhwS0biO9CQ/wXS4EGhjQ1p1FqoURpidB9hj+jHZcseN6Bw8LBdH2+HwPf5pkuMEreiEJ8HogHjwZlFO3cG9HSLomIpYHCEERF7Di0OOloac9ji8E4NUU8DROC1DWCxHQOMaPA0RdljNdMsj4dGJ1FRxwexfbo8fCpR2W5Xs3ME6FEW3Pspdmjp8LY5ahLN6O+DSoWqpDg1RC6FWGV+6UnwTdHwRNCGwr7LzNd8fRyYWiiWmBf1WLcGHGa2dmZiLM+BvfobOzE1xNeRy5qUvgVU9wMMTYn+bL7yUp5Fj0PInmFxpJnfZ2uJAU0Z1b9Cm5difwSoTzhoOWJGWJ8GwXIx9HYfBPJNTJ0GqlRko89RjjGxulHpVSei2ppj/LP2PKLnSGW5nTrL/T7MdcnqGKD5Rvw7HhAEg3DUxQFBeTdFLtlzD1Ag+GPBqmeF0bqM+JJBb3wqXWrwnG6XSiL2LE0deA9whiL7RuMvCFTYsZaxCVYXqicZVDVug4nwmLZRPRvSlv4IuYa2PV+BLBqI7ITl2KzUsBaJTktNQo37G8Ywyw2Ub4MthwIJw8FO2eFwTn7KFbw6EejzwT+Ra+DvvCXzwblGmmZO+Bij+B9FtHbH7EzHezSQ0RjLdsfsfBsb0b/AIN5wfyG3ExNHUMTvngsx12XhVNa6H4TieyGULWPr4Gkdfhs/wBF+iaLiwm0bboT0eFn2d70WvgLeH1Dq0klT1osRYNh8bMYZe+DfC6PTs6Qeio1ENUfiFYantDieC4WnQavguDbi0SH9D37IDhDFOz/ANB+dCswSWg0hyjM9EJQ2RQETjzdDWj6Nj/jUbG/6PZRsSr4O1/wmGglpKyYpWTOk7+hDV0OPwsHw7nk7EdlU4D+ibaDg+tuiWIvOfIxa9BLXfwJLap2PsM+RetdHRUZQah4nBVSHzUMNj4T7j2MsssU6G/kWJJlpKJK+xebHEo8Y3g8UWp942neGO6LNLwP14sMBuUuBCXkPX7IK5EHk2OgzKp8GjUI2Llk/lLBpK+NmU6Q8enWjpGkYcDG9DLejY2P6HgpRlGzsSzsS9cHjw8sJDIvXkaiIHLaHFfRnogxWc7cUqOi+JWdFi9aGyI8NSO/f9l4Zv6FoUFWtI6X+4leNO/Y1FgtXQ9KtPzBXUWMrvYSco74l8tldRum0MLdtscbGxxxusb4V5ZRPYg6WDW8Eiwa9dj6UN9l4epDI3Gf9sS4fTMqlZ6xd8W0XQOCVYv/AEcW06lcSIzdd9tkysjWm1saakKT5Lr1nof7HVHSEVKkN3EHbBeJbvRQb9w5q1sYo2Nj1DUN6Nj/AAb9cfQSxiWjXoJEI3wKK7CN9jSaPulGMn7GWmFvz7FiRk3eIdU2l9eB72XWanCxCaiSMa4SdosVURtgQu0eoMUrVHS5tQQin62dtJD61tt0fHbg443o+jfLKeOHkSq0fqImuBKhwieX0QXOCDxG3DKYeLOy1HF0PqmaSH2zb2MU1UvXB6Z0/Q88do3XISZQqYbkRjbAxLo54VZu2w7Ry9X4LrwnDzyxj4tnQfDHxA+ZeBr3wwyRwXWMJ64vFTrgkXHIXWDe8tFoHKwRUWiotCbxZIS3VwgWqTGV+JVxDe6Mqj7+RtL1RVhUpDmd7758DHbkYxj4fCnRcLsIKxmCCBHNRB0PA9h6ZCy9kfGaokvpCI+LMELAcfVjfH+CwFn0dav8KhkhvLvgtt9GJy3PB4QBP8J0inji6N7w+3wfDGHw+EGIbs9ThvQvo8C+xo6iR2X4N4ZcfXFlxmJLumSCRFX1p3CcX9BeBvkNJ35It50xJEF3wuV08DCzjLwTLw+GtYxjPLPIxE4a3lLPCDlLmvRejXBJtISMb6h0GL6LoOuGSsC9PadFojeWhToo7sqn8pC/efYy4pE6b+geCwWdk85xRfgo2NaMawnDE46D9hvRLrBxaNehZAfsLmVxXi6gzX2N3TXXsaehLGPQ2GTKHgIT7Q8fAyYH9wknsGaO88O4D2oumCnHI2KrOrwfGjPPCfs7Qxvma5NEOuGhrBhISHhPmDQ7D+Rph8hqfRodVC1aNREGYmvz0J2dCBSpVeL1tm59b8Hodq+THoopfkyBDFU1koj2bwI0vp2yXGnpGJ0cRJVy9lKMT4b4Yf4O3D4eDyLukGsJfsag/IawW66OwyEnZ6LgzZNRa2O+VeqeLHBKmm1pcAY4uxeYq9+xh6YpManRiR8QqvMXUK3endiFNita+RxEVboKg0h1u28YK7Xcaq+KUv8A5HxMWsXyJkpgn9GhPYs6E8k7D8VhsKbEnKbs7i8HjBEKSR+x1qwKv8JGLlb0PSq/CLVVQ5rcGUhSPez5HD6SWhvWBrex9W+S9hMT4ZRjf/h8SC5xToglGTuDUY1gvdMUdU4GweP4GoTXsdicG9Dg6WCxVjH0ZZuJr5OpE52dwFRKVHoXxDReZ7+hFv8AMky+i/OHFFr3yPWLSJFXxxS4dIjsUYnw+UMeCZ0FU0WMXR7BllzS9mn9cH0Jmnb6FlR1sPV4EynhpiIREdxSRJMxHRVCIvsZN+w+8Efk2WIo3w2LjyPR4JlG6Kdi0eCWquD/AAK5wP6PgPVGLF1hR5B0L8YRllffI4xc4NEySiwRl4WnKx8EmN6N38qUtY+GLg+B1WCWmUaHPsNTBo9g+C9ncMPBWl8G0vZKPAaPGGJrKGOl/o+8a5wZH1kR/dvFZkxx6LQ4vrZ+iGFOil5bKxPSgylPGjeFg/KipmESs8C0fEpM9CtxYKh8jMLyWJD7QM6MfYf2exPsXa4Xmv2O4L+hnXz4JHb9sfmGm/KcJJd7ZoNuHd4b4f4XjR4IUiXy4l5PaPXLIEGOuH8j0Du8C52Ym8psrSJxpj6M9lotbh104NRhq2pdDth5/RLglvsJPcePxPllXDYcbYkoXGh6MI3YknRINUag3n4C2nSfh008MfcGe+iaDTotZMYwhGA8jzEd2MAIsYlG/Yb/AAWt5eFLwWIi+O+HkU2iHoYx/XHow12LOb0nH3guhafR9D1ou0/3wn2UT0foCfdjhLvBiWlv4IWnQeQNIpx0X8GZ4Y1g8lnEn9jil7LH2Q9YM9i0mIQ3yZmdD1MwP64mtnFLXpqHkKdRl7g8ErLRE8haWIM1Il1o4wVW3YrQ4kIBqxs0hmjQfr0PBil9ngY2afLHnReKRRMY8VDdQ9o3Fo5bNg2MbhjMcYC2kL5IO6P+l4DAZCWm3oeobjG4LWrDLEN+2jey8aeaHnosSEhc4bKN5yi/yL3Tzg1UPMExOsUbGTl9jaNtaNMDbwG9DUuZP0NV2+Nh4QTH/wBEtOuQhYQxDwFWm67FRgkDifvhTlablwb9jbhTsNjCej0TiOxtC+zG4LyiceDvoo3VxYfJkG4G1fAb28NmJM7jxP7xGejCE9cBuUrG2+mhi4EVSd+4fLuCvUg3+6F8oU03QuDkHFH9l6vQ1eB8Nj6LUJ4CDfH+xHben//Z"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "ABHIJITH UNNIKRISHNAN",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(
                  Icons.sentiment_very_satisfied,
                  color: Colors.amber,
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "B.tech in EC TKM College Of Engineering",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: _launchURLt,
                    icon: const Icon(MyFlutterApp.twitter)),
                const Divider(
                  thickness: 2,
                ),
                IconButton(
                    onPressed: _launchURLgt, icon: const Icon(MyFlutterApp.github)),
                const Divider(
                  thickness: 2,
                ),
                IconButton(
                    onPressed: _launchURLgm,
                    icon: const Icon(MyFlutterApp.gmail)),
                const Divider(
                  thickness: 2,
                ),
                IconButton(
                    onPressed: _launchURLl,
                    icon: const Icon(MyFlutterApp.linkedin_squared))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: names.length,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 250,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          tileColor: const Color.fromARGB(255, 166, 206, 239),
                          title: Center(child: Text(names[index])),
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                              messages[index],
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 43, 255, 0)),
                            )));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
