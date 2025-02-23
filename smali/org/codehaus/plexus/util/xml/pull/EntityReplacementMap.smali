.class public Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;
.super Ljava/lang/Object;


# static fields
.field public static final defaultEntityReplacementMap:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;


# instance fields
.field entityEnd:I

.field final entityName:[Ljava/lang/String;

.field final entityNameBuf:[[C

.field final entityNameHash:[I

.field final entityReplacement:[Ljava/lang/String;

.field final entityReplacementBuf:[[C


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    const/16 v1, 0xf8

    new-array v1, v1, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "nbsp"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "\u00a0"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "iexcl"

    aput-object v4, v3, v5

    const-string v4, "\u00a1"

    aput-object v4, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "cent"

    aput-object v4, v3, v5

    const-string v4, "\u00a2"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "pound"

    aput-object v4, v3, v5

    const-string v4, "\u00a3"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "curren"

    aput-object v4, v3, v5

    const-string v4, "\u00a4"

    aput-object v4, v3, v6

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "yen"

    aput-object v4, v3, v5

    const-string v4, "\u00a5"

    aput-object v4, v3, v6

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "brvbar"

    aput-object v4, v3, v5

    const-string v4, "\u00a6"

    aput-object v4, v3, v6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sect"

    aput-object v4, v3, v5

    const-string v4, "\u00a7"

    aput-object v4, v3, v6

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "uml"

    aput-object v4, v3, v5

    const-string v4, "\u00a8"

    aput-object v4, v3, v6

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "copy"

    aput-object v4, v3, v5

    const-string v4, "\u00a9"

    aput-object v4, v3, v6

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ordf"

    aput-object v4, v3, v5

    const-string v4, "\u00aa"

    aput-object v4, v3, v6

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "laquo"

    aput-object v4, v3, v5

    const-string v4, "\u00ab"

    aput-object v4, v3, v6

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "not"

    aput-object v4, v3, v5

    const-string v4, "\u00ac"

    aput-object v4, v3, v6

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "shy"

    aput-object v4, v3, v5

    const-string v4, "\u00ad"

    aput-object v4, v3, v6

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "reg"

    aput-object v4, v3, v5

    const-string v4, "\u00ae"

    aput-object v4, v3, v6

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "macr"

    aput-object v4, v3, v5

    const-string v4, "\u00af"

    aput-object v4, v3, v6

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "deg"

    aput-object v4, v3, v5

    const-string v4, "\u00b0"

    aput-object v4, v3, v6

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "plusmn"

    aput-object v4, v3, v5

    const-string v4, "\u00b1"

    aput-object v4, v3, v6

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sup2"

    aput-object v4, v3, v5

    const-string v4, "\u00b2"

    aput-object v4, v3, v6

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sup3"

    aput-object v4, v3, v5

    const-string v4, "\u00b3"

    aput-object v4, v3, v6

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "acute"

    aput-object v4, v3, v5

    const-string v4, "\u00b4"

    aput-object v4, v3, v6

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "micro"

    aput-object v4, v3, v5

    const-string v4, "\u00b5"

    aput-object v4, v3, v6

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "para"

    aput-object v4, v3, v5

    const-string v4, "\u00b6"

    aput-object v4, v3, v6

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "middot"

    aput-object v4, v3, v5

    const-string v4, "\u00b7"

    aput-object v4, v3, v6

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "cedil"

    aput-object v4, v3, v5

    const-string v4, "\u00b8"

    aput-object v4, v3, v6

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sup1"

    aput-object v4, v3, v5

    const-string v4, "\u00b9"

    aput-object v4, v3, v6

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ordm"

    aput-object v4, v3, v5

    const-string v4, "\u00ba"

    aput-object v4, v3, v6

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "raquo"

    aput-object v4, v3, v5

    const-string v4, "\u00bb"

    aput-object v4, v3, v6

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "frac14"

    aput-object v4, v3, v5

    const-string v4, "\u00bc"

    aput-object v4, v3, v6

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "frac12"

    aput-object v4, v3, v5

    const-string v4, "\u00bd"

    aput-object v4, v3, v6

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "frac34"

    aput-object v4, v3, v5

    const-string v4, "\u00be"

    aput-object v4, v3, v6

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "iquest"

    aput-object v4, v3, v5

    const-string v4, "\u00bf"

    aput-object v4, v3, v6

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Agrave"

    aput-object v4, v3, v5

    const-string v4, "\u00c0"

    aput-object v4, v3, v6

    const/16 v4, 0x20

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Aacute"

    aput-object v4, v3, v5

    const-string v4, "\u00c1"

    aput-object v4, v3, v6

    const/16 v4, 0x21

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Acirc"

    aput-object v4, v3, v5

    const-string v4, "\u00c2"

    aput-object v4, v3, v6

    const/16 v4, 0x22

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Atilde"

    aput-object v4, v3, v5

    const-string v4, "\u00c3"

    aput-object v4, v3, v6

    const/16 v4, 0x23

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Auml"

    aput-object v4, v3, v5

    const-string v4, "\u00c4"

    aput-object v4, v3, v6

    const/16 v4, 0x24

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Aring"

    aput-object v4, v3, v5

    const-string v4, "\u00c5"

    aput-object v4, v3, v6

    const/16 v4, 0x25

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "AElig"

    aput-object v4, v3, v5

    const-string v4, "\u00c6"

    aput-object v4, v3, v6

    const/16 v4, 0x26

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Ccedil"

    aput-object v4, v3, v5

    const-string v4, "\u00c7"

    aput-object v4, v3, v6

    const/16 v4, 0x27

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Egrave"

    aput-object v4, v3, v5

    const-string v4, "\u00c8"

    aput-object v4, v3, v6

    const/16 v4, 0x28

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Eacute"

    aput-object v4, v3, v5

    const-string v4, "\u00c9"

    aput-object v4, v3, v6

    const/16 v4, 0x29

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Ecirc"

    aput-object v4, v3, v5

    const-string v4, "\u00ca"

    aput-object v4, v3, v6

    const/16 v4, 0x2a

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Euml"

    aput-object v4, v3, v5

    const-string v4, "\u00cb"

    aput-object v4, v3, v6

    const/16 v4, 0x2b

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Igrave"

    aput-object v4, v3, v5

    const-string v4, "\u00cc"

    aput-object v4, v3, v6

    const/16 v4, 0x2c

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Iacute"

    aput-object v4, v3, v5

    const-string v4, "\u00cd"

    aput-object v4, v3, v6

    const/16 v4, 0x2d

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Icirc"

    aput-object v4, v3, v5

    const-string v4, "\u00ce"

    aput-object v4, v3, v6

    const/16 v4, 0x2e

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Iuml"

    aput-object v4, v3, v5

    const-string v4, "\u00cf"

    aput-object v4, v3, v6

    const/16 v4, 0x2f

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ETH"

    aput-object v4, v3, v5

    const-string v4, "\u00d0"

    aput-object v4, v3, v6

    const/16 v4, 0x30

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Ntilde"

    aput-object v4, v3, v5

    const-string v4, "\u00d1"

    aput-object v4, v3, v6

    const/16 v4, 0x31

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Ograve"

    aput-object v4, v3, v5

    const-string v4, "\u00d2"

    aput-object v4, v3, v6

    const/16 v4, 0x32

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Oacute"

    aput-object v4, v3, v5

    const-string v4, "\u00d3"

    aput-object v4, v3, v6

    const/16 v4, 0x33

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Ocirc"

    aput-object v4, v3, v5

    const-string v4, "\u00d4"

    aput-object v4, v3, v6

    const/16 v4, 0x34

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Otilde"

    aput-object v4, v3, v5

    const-string v4, "\u00d5"

    aput-object v4, v3, v6

    const/16 v4, 0x35

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Ouml"

    aput-object v4, v3, v5

    const-string v4, "\u00d6"

    aput-object v4, v3, v6

    const/16 v4, 0x36

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "times"

    aput-object v4, v3, v5

    const-string v4, "\u00d7"

    aput-object v4, v3, v6

    const/16 v4, 0x37

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Oslash"

    aput-object v4, v3, v5

    const-string v4, "\u00d8"

    aput-object v4, v3, v6

    const/16 v4, 0x38

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Ugrave"

    aput-object v4, v3, v5

    const-string v4, "\u00d9"

    aput-object v4, v3, v6

    const/16 v4, 0x39

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Uacute"

    aput-object v4, v3, v5

    const-string v4, "\u00da"

    aput-object v4, v3, v6

    const/16 v4, 0x3a

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Ucirc"

    aput-object v4, v3, v5

    const-string v4, "\u00db"

    aput-object v4, v3, v6

    const/16 v4, 0x3b

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Uuml"

    aput-object v4, v3, v5

    const-string v4, "\u00dc"

    aput-object v4, v3, v6

    const/16 v4, 0x3c

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Yacute"

    aput-object v4, v3, v5

    const-string v4, "\u00dd"

    aput-object v4, v3, v6

    const/16 v4, 0x3d

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "THORN"

    aput-object v4, v3, v5

    const-string v4, "\u00de"

    aput-object v4, v3, v6

    const/16 v4, 0x3e

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "szlig"

    aput-object v4, v3, v5

    const-string v4, "\u00df"

    aput-object v4, v3, v6

    const/16 v4, 0x3f

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "agrave"

    aput-object v4, v3, v5

    const-string v4, "\u00e0"

    aput-object v4, v3, v6

    const/16 v4, 0x40

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "aacute"

    aput-object v4, v3, v5

    const-string v4, "\u00e1"

    aput-object v4, v3, v6

    const/16 v4, 0x41

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "acirc"

    aput-object v4, v3, v5

    const-string v4, "\u00e2"

    aput-object v4, v3, v6

    const/16 v4, 0x42

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "atilde"

    aput-object v4, v3, v5

    const-string v4, "\u00e3"

    aput-object v4, v3, v6

    const/16 v4, 0x43

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "auml"

    aput-object v4, v3, v5

    const-string v4, "\u00e4"

    aput-object v4, v3, v6

    const/16 v4, 0x44

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "aring"

    aput-object v4, v3, v5

    const-string v4, "\u00e5"

    aput-object v4, v3, v6

    const/16 v4, 0x45

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "aelig"

    aput-object v4, v3, v5

    const-string v4, "\u00e6"

    aput-object v4, v3, v6

    const/16 v4, 0x46

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ccedil"

    aput-object v4, v3, v5

    const-string v4, "\u00e7"

    aput-object v4, v3, v6

    const/16 v4, 0x47

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "egrave"

    aput-object v4, v3, v5

    const-string v4, "\u00e8"

    aput-object v4, v3, v6

    const/16 v4, 0x48

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "eacute"

    aput-object v4, v3, v5

    const-string v4, "\u00e9"

    aput-object v4, v3, v6

    const/16 v4, 0x49

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ecirc"

    aput-object v4, v3, v5

    const-string v4, "\u00ea"

    aput-object v4, v3, v6

    const/16 v4, 0x4a

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "euml"

    aput-object v4, v3, v5

    const-string v4, "\u00eb"

    aput-object v4, v3, v6

    const/16 v4, 0x4b

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "igrave"

    aput-object v4, v3, v5

    const-string v4, "\u00ec"

    aput-object v4, v3, v6

    const/16 v4, 0x4c

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "iacute"

    aput-object v4, v3, v5

    const-string v4, "\u00ed"

    aput-object v4, v3, v6

    const/16 v4, 0x4d

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "icirc"

    aput-object v4, v3, v5

    const-string v4, "\u00ee"

    aput-object v4, v3, v6

    const/16 v4, 0x4e

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "iuml"

    aput-object v4, v3, v5

    const-string v4, "\u00ef"

    aput-object v4, v3, v6

    const/16 v4, 0x4f

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "eth"

    aput-object v4, v3, v5

    const-string v4, "\u00f0"

    aput-object v4, v3, v6

    const/16 v4, 0x50

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ntilde"

    aput-object v4, v3, v5

    const-string v4, "\u00f1"

    aput-object v4, v3, v6

    const/16 v4, 0x51

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ograve"

    aput-object v4, v3, v5

    const-string v4, "\u00f2"

    aput-object v4, v3, v6

    const/16 v4, 0x52

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "oacute"

    aput-object v4, v3, v5

    const-string v4, "\u00f3"

    aput-object v4, v3, v6

    const/16 v4, 0x53

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ocirc"

    aput-object v4, v3, v5

    const-string v4, "\u00f4"

    aput-object v4, v3, v6

    const/16 v4, 0x54

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "otilde"

    aput-object v4, v3, v5

    const-string v4, "\u00f5"

    aput-object v4, v3, v6

    const/16 v4, 0x55

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ouml"

    aput-object v4, v3, v5

    const-string v4, "\u00f6"

    aput-object v4, v3, v6

    const/16 v4, 0x56

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "divide"

    aput-object v4, v3, v5

    const-string v4, "\u00f7"

    aput-object v4, v3, v6

    const/16 v4, 0x57

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "oslash"

    aput-object v4, v3, v5

    const-string v4, "\u00f8"

    aput-object v4, v3, v6

    const/16 v4, 0x58

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ugrave"

    aput-object v4, v3, v5

    const-string v4, "\u00f9"

    aput-object v4, v3, v6

    const/16 v4, 0x59

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "uacute"

    aput-object v4, v3, v5

    const-string v4, "\u00fa"

    aput-object v4, v3, v6

    const/16 v4, 0x5a

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ucirc"

    aput-object v4, v3, v5

    const-string v4, "\u00fb"

    aput-object v4, v3, v6

    const/16 v4, 0x5b

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "uuml"

    aput-object v4, v3, v5

    const-string v4, "\u00fc"

    aput-object v4, v3, v6

    const/16 v4, 0x5c

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "yacute"

    aput-object v4, v3, v5

    const-string v4, "\u00fd"

    aput-object v4, v3, v6

    const/16 v4, 0x5d

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "thorn"

    aput-object v4, v3, v5

    const-string v4, "\u00fe"

    aput-object v4, v3, v6

    const/16 v4, 0x5e

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "yuml"

    aput-object v4, v3, v5

    const-string v4, "\u00ff"

    aput-object v4, v3, v6

    const/16 v4, 0x5f

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "OElig"

    aput-object v4, v3, v5

    const-string v4, "\u0152"

    aput-object v4, v3, v6

    const/16 v4, 0x60

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "oelig"

    aput-object v4, v3, v5

    const-string v4, "\u0153"

    aput-object v4, v3, v6

    const/16 v4, 0x61

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Scaron"

    aput-object v4, v3, v5

    const-string v4, "\u0160"

    aput-object v4, v3, v6

    const/16 v4, 0x62

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "scaron"

    aput-object v4, v3, v5

    const-string v4, "\u0161"

    aput-object v4, v3, v6

    const/16 v4, 0x63

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Yuml"

    aput-object v4, v3, v5

    const-string v4, "\u0178"

    aput-object v4, v3, v6

    const/16 v4, 0x64

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "circ"

    aput-object v4, v3, v5

    const-string v4, "\u02c6"

    aput-object v4, v3, v6

    const/16 v4, 0x65

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "tilde"

    aput-object v4, v3, v5

    const-string v4, "\u02dc"

    aput-object v4, v3, v6

    const/16 v4, 0x66

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ensp"

    aput-object v4, v3, v5

    const-string v4, "\u2002"

    aput-object v4, v3, v6

    const/16 v4, 0x67

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "emsp"

    aput-object v4, v3, v5

    const-string v4, "\u2003"

    aput-object v4, v3, v6

    const/16 v4, 0x68

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "thinsp"

    aput-object v4, v3, v5

    const-string v4, "\u2009"

    aput-object v4, v3, v6

    const/16 v4, 0x69

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "zwnj"

    aput-object v4, v3, v5

    const-string v4, "\u200c"

    aput-object v4, v3, v6

    const/16 v4, 0x6a

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "zwj"

    aput-object v4, v3, v5

    const-string v4, "\u200d"

    aput-object v4, v3, v6

    const/16 v4, 0x6b

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lrm"

    aput-object v4, v3, v5

    const-string v4, "\u200e"

    aput-object v4, v3, v6

    const/16 v4, 0x6c

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "rlm"

    aput-object v4, v3, v5

    const-string v4, "\u200f"

    aput-object v4, v3, v6

    const/16 v4, 0x6d

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ndash"

    aput-object v4, v3, v5

    const-string v4, "\u2013"

    aput-object v4, v3, v6

    const/16 v4, 0x6e

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "mdash"

    aput-object v4, v3, v5

    const-string v4, "\u2014"

    aput-object v4, v3, v6

    const/16 v4, 0x6f

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lsquo"

    aput-object v4, v3, v5

    const-string v4, "\u2018"

    aput-object v4, v3, v6

    const/16 v4, 0x70

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "rsquo"

    aput-object v4, v3, v5

    const-string v4, "\u2019"

    aput-object v4, v3, v6

    const/16 v4, 0x71

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sbquo"

    aput-object v4, v3, v5

    const-string v4, "\u201a"

    aput-object v4, v3, v6

    const/16 v4, 0x72

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ldquo"

    aput-object v4, v3, v5

    const-string v4, "\u201c"

    aput-object v4, v3, v6

    const/16 v4, 0x73

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "rdquo"

    aput-object v4, v3, v5

    const-string v4, "\u201d"

    aput-object v4, v3, v6

    const/16 v4, 0x74

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "bdquo"

    aput-object v4, v3, v5

    const-string v4, "\u201e"

    aput-object v4, v3, v6

    const/16 v4, 0x75

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "dagger"

    aput-object v4, v3, v5

    const-string v4, "\u2020"

    aput-object v4, v3, v6

    const/16 v4, 0x76

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Dagger"

    aput-object v4, v3, v5

    const-string v4, "\u2021"

    aput-object v4, v3, v6

    const/16 v4, 0x77

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "permil"

    aput-object v4, v3, v5

    const-string v4, "\u2030"

    aput-object v4, v3, v6

    const/16 v4, 0x78

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lsaquo"

    aput-object v4, v3, v5

    const-string v4, "\u2039"

    aput-object v4, v3, v6

    const/16 v4, 0x79

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "rsaquo"

    aput-object v4, v3, v5

    const-string v4, "\u203a"

    aput-object v4, v3, v6

    const/16 v4, 0x7a

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "euro"

    aput-object v4, v3, v5

    const-string v4, "\u20ac"

    aput-object v4, v3, v6

    const/16 v4, 0x7b

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "fnof"

    aput-object v4, v3, v5

    const-string v4, "\u0192"

    aput-object v4, v3, v6

    const/16 v4, 0x7c

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Alpha"

    aput-object v4, v3, v5

    const-string v4, "\u0391"

    aput-object v4, v3, v6

    const/16 v4, 0x7d

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Beta"

    aput-object v4, v3, v5

    const-string v4, "\u0392"

    aput-object v4, v3, v6

    const/16 v4, 0x7e

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Gamma"

    aput-object v4, v3, v5

    const-string v4, "\u0393"

    aput-object v4, v3, v6

    const/16 v4, 0x7f

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Delta"

    aput-object v4, v3, v5

    const-string v4, "\u0394"

    aput-object v4, v3, v6

    const/16 v4, 0x80

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Epsilon"

    aput-object v4, v3, v5

    const-string v4, "\u0395"

    aput-object v4, v3, v6

    const/16 v4, 0x81

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Zeta"

    aput-object v4, v3, v5

    const-string v4, "\u0396"

    aput-object v4, v3, v6

    const/16 v4, 0x82

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Eta"

    aput-object v4, v3, v5

    const-string v4, "\u0397"

    aput-object v4, v3, v6

    const/16 v4, 0x83

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Theta"

    aput-object v4, v3, v5

    const-string v4, "\u0398"

    aput-object v4, v3, v6

    const/16 v4, 0x84

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Iota"

    aput-object v4, v3, v5

    const-string v4, "\u0399"

    aput-object v4, v3, v6

    const/16 v4, 0x85

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Kappa"

    aput-object v4, v3, v5

    const-string v4, "\u039a"

    aput-object v4, v3, v6

    const/16 v4, 0x86

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Lambda"

    aput-object v4, v3, v5

    const-string v4, "\u039b"

    aput-object v4, v3, v6

    const/16 v4, 0x87

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Mu"

    aput-object v4, v3, v5

    const-string v4, "\u039c"

    aput-object v4, v3, v6

    const/16 v4, 0x88

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Nu"

    aput-object v4, v3, v5

    const-string v4, "\u039d"

    aput-object v4, v3, v6

    const/16 v4, 0x89

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Xi"

    aput-object v4, v3, v5

    const-string v4, "\u039e"

    aput-object v4, v3, v6

    const/16 v4, 0x8a

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Omicron"

    aput-object v4, v3, v5

    const-string v4, "\u039f"

    aput-object v4, v3, v6

    const/16 v4, 0x8b

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Pi"

    aput-object v4, v3, v5

    const-string v4, "\u03a0"

    aput-object v4, v3, v6

    const/16 v4, 0x8c

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Rho"

    aput-object v4, v3, v5

    const-string v4, "\u03a1"

    aput-object v4, v3, v6

    const/16 v4, 0x8d

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Sigma"

    aput-object v4, v3, v5

    const-string v4, "\u03a3"

    aput-object v4, v3, v6

    const/16 v4, 0x8e

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Tau"

    aput-object v4, v3, v5

    const-string v4, "\u03a4"

    aput-object v4, v3, v6

    const/16 v4, 0x8f

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Upsilon"

    aput-object v4, v3, v5

    const-string v4, "\u03a5"

    aput-object v4, v3, v6

    const/16 v4, 0x90

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Phi"

    aput-object v4, v3, v5

    const-string v4, "\u03a6"

    aput-object v4, v3, v6

    const/16 v4, 0x91

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Chi"

    aput-object v4, v3, v5

    const-string v4, "\u03a7"

    aput-object v4, v3, v6

    const/16 v4, 0x92

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Psi"

    aput-object v4, v3, v5

    const-string v4, "\u03a8"

    aput-object v4, v3, v6

    const/16 v4, 0x93

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Omega"

    aput-object v4, v3, v5

    const-string v4, "\u03a9"

    aput-object v4, v3, v6

    const/16 v4, 0x94

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "alpha"

    aput-object v4, v3, v5

    const-string v4, "\u03b1"

    aput-object v4, v3, v6

    const/16 v4, 0x95

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "beta"

    aput-object v4, v3, v5

    const-string v4, "\u03b2"

    aput-object v4, v3, v6

    const/16 v4, 0x96

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "gamma"

    aput-object v4, v3, v5

    const-string v4, "\u03b3"

    aput-object v4, v3, v6

    const/16 v4, 0x97

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "delta"

    aput-object v4, v3, v5

    const-string v4, "\u03b4"

    aput-object v4, v3, v6

    const/16 v4, 0x98

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "epsilon"

    aput-object v4, v3, v5

    const-string v4, "\u03b5"

    aput-object v4, v3, v6

    const/16 v4, 0x99

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "zeta"

    aput-object v4, v3, v5

    const-string v4, "\u03b6"

    aput-object v4, v3, v6

    const/16 v4, 0x9a

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "eta"

    aput-object v4, v3, v5

    const-string v4, "\u03b7"

    aput-object v4, v3, v6

    const/16 v4, 0x9b

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "theta"

    aput-object v4, v3, v5

    const-string v4, "\u03b8"

    aput-object v4, v3, v6

    const/16 v4, 0x9c

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "iota"

    aput-object v4, v3, v5

    const-string v4, "\u03b9"

    aput-object v4, v3, v6

    const/16 v4, 0x9d

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "kappa"

    aput-object v4, v3, v5

    const-string v4, "\u03ba"

    aput-object v4, v3, v6

    const/16 v4, 0x9e

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lambda"

    aput-object v4, v3, v5

    const-string v4, "\u03bb"

    aput-object v4, v3, v6

    const/16 v4, 0x9f

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "mu"

    aput-object v4, v3, v5

    const-string v4, "\u03bc"

    aput-object v4, v3, v6

    const/16 v4, 0xa0

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "nu"

    aput-object v4, v3, v5

    const-string v4, "\u03bd"

    aput-object v4, v3, v6

    const/16 v4, 0xa1

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "xi"

    aput-object v4, v3, v5

    const-string v4, "\u03be"

    aput-object v4, v3, v6

    const/16 v4, 0xa2

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "omicron"

    aput-object v4, v3, v5

    const-string v4, "\u03bf"

    aput-object v4, v3, v6

    const/16 v4, 0xa3

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "pi"

    aput-object v4, v3, v5

    const-string v4, "\u03c0"

    aput-object v4, v3, v6

    const/16 v4, 0xa4

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "rho"

    aput-object v4, v3, v5

    const-string v4, "\u03c1"

    aput-object v4, v3, v6

    const/16 v4, 0xa5

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sigmaf"

    aput-object v4, v3, v5

    const-string v4, "\u03c2"

    aput-object v4, v3, v6

    const/16 v4, 0xa6

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sigma"

    aput-object v4, v3, v5

    const-string v4, "\u03c3"

    aput-object v4, v3, v6

    const/16 v4, 0xa7

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "tau"

    aput-object v4, v3, v5

    const-string v4, "\u03c4"

    aput-object v4, v3, v6

    const/16 v4, 0xa8

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "upsilon"

    aput-object v4, v3, v5

    const-string v4, "\u03c5"

    aput-object v4, v3, v6

    const/16 v4, 0xa9

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "phi"

    aput-object v4, v3, v5

    const-string v4, "\u03c6"

    aput-object v4, v3, v6

    const/16 v4, 0xaa

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "chi"

    aput-object v4, v3, v5

    const-string v4, "\u03c7"

    aput-object v4, v3, v6

    const/16 v4, 0xab

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "psi"

    aput-object v4, v3, v5

    const-string v4, "\u03c8"

    aput-object v4, v3, v6

    const/16 v4, 0xac

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "omega"

    aput-object v4, v3, v5

    const-string v4, "\u03c9"

    aput-object v4, v3, v6

    const/16 v4, 0xad

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "thetasym"

    aput-object v4, v3, v5

    const-string v4, "\u03d1"

    aput-object v4, v3, v6

    const/16 v4, 0xae

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "upsih"

    aput-object v4, v3, v5

    const-string v4, "\u03d2"

    aput-object v4, v3, v6

    const/16 v4, 0xaf

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "piv"

    aput-object v4, v3, v5

    const-string v4, "\u03d6"

    aput-object v4, v3, v6

    const/16 v4, 0xb0

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "bull"

    aput-object v4, v3, v5

    const-string v4, "\u2022"

    aput-object v4, v3, v6

    const/16 v4, 0xb1

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "hellip"

    aput-object v4, v3, v5

    const-string v4, "\u2026"

    aput-object v4, v3, v6

    const/16 v4, 0xb2

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "prime"

    aput-object v4, v3, v5

    const-string v4, "\u2032"

    aput-object v4, v3, v6

    const/16 v4, 0xb3

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Prime"

    aput-object v4, v3, v5

    const-string v4, "\u2033"

    aput-object v4, v3, v6

    const/16 v4, 0xb4

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "oline"

    aput-object v4, v3, v5

    const-string v4, "\u203e"

    aput-object v4, v3, v6

    const/16 v4, 0xb5

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "frasl"

    aput-object v4, v3, v5

    const-string v4, "\u2044"

    aput-object v4, v3, v6

    const/16 v4, 0xb6

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "weierp"

    aput-object v4, v3, v5

    const-string v4, "\u2118"

    aput-object v4, v3, v6

    const/16 v4, 0xb7

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "image"

    aput-object v4, v3, v5

    const-string v4, "\u2111"

    aput-object v4, v3, v6

    const/16 v4, 0xb8

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "real"

    aput-object v4, v3, v5

    const-string v4, "\u211c"

    aput-object v4, v3, v6

    const/16 v4, 0xb9

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "trade"

    aput-object v4, v3, v5

    const-string v4, "\u2122"

    aput-object v4, v3, v6

    const/16 v4, 0xba

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "alefsym"

    aput-object v4, v3, v5

    const-string v4, "\u2135"

    aput-object v4, v3, v6

    const/16 v4, 0xbb

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "larr"

    aput-object v4, v3, v5

    const-string v4, "\u2190"

    aput-object v4, v3, v6

    const/16 v4, 0xbc

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "uarr"

    aput-object v4, v3, v5

    const-string v4, "\u2191"

    aput-object v4, v3, v6

    const/16 v4, 0xbd

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "rarr"

    aput-object v4, v3, v5

    const-string v4, "\u2192"

    aput-object v4, v3, v6

    const/16 v4, 0xbe

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "darr"

    aput-object v4, v3, v5

    const-string v4, "\u2193"

    aput-object v4, v3, v6

    const/16 v4, 0xbf

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "harr"

    aput-object v4, v3, v5

    const-string v4, "\u2194"

    aput-object v4, v3, v6

    const/16 v4, 0xc0

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "crarr"

    aput-object v4, v3, v5

    const-string v4, "\u21b5"

    aput-object v4, v3, v6

    const/16 v4, 0xc1

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lArr"

    aput-object v4, v3, v5

    const-string v4, "\u21d0"

    aput-object v4, v3, v6

    const/16 v4, 0xc2

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "uArr"

    aput-object v4, v3, v5

    const-string v4, "\u21d1"

    aput-object v4, v3, v6

    const/16 v4, 0xc3

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "rArr"

    aput-object v4, v3, v5

    const-string v4, "\u21d2"

    aput-object v4, v3, v6

    const/16 v4, 0xc4

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "dArr"

    aput-object v4, v3, v5

    const-string v4, "\u21d3"

    aput-object v4, v3, v6

    const/16 v4, 0xc5

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "hArr"

    aput-object v4, v3, v5

    const-string v4, "\u21d4"

    aput-object v4, v3, v6

    const/16 v4, 0xc6

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "forall"

    aput-object v4, v3, v5

    const-string v4, "\u2200"

    aput-object v4, v3, v6

    const/16 v4, 0xc7

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "part"

    aput-object v4, v3, v5

    const-string v4, "\u2202"

    aput-object v4, v3, v6

    const/16 v4, 0xc8

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "exist"

    aput-object v4, v3, v5

    const-string v4, "\u2203"

    aput-object v4, v3, v6

    const/16 v4, 0xc9

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "empty"

    aput-object v4, v3, v5

    const-string v4, "\u2205"

    aput-object v4, v3, v6

    const/16 v4, 0xca

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "nabla"

    aput-object v4, v3, v5

    const-string v4, "\u2207"

    aput-object v4, v3, v6

    const/16 v4, 0xcb

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "isin"

    aput-object v4, v3, v5

    const-string v4, "\u2208"

    aput-object v4, v3, v6

    const/16 v4, 0xcc

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "notin"

    aput-object v4, v3, v5

    const-string v4, "\u2209"

    aput-object v4, v3, v6

    const/16 v4, 0xcd

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ni"

    aput-object v4, v3, v5

    const-string v4, "\u220b"

    aput-object v4, v3, v6

    const/16 v4, 0xce

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "prod"

    aput-object v4, v3, v5

    const-string v4, "\u220f"

    aput-object v4, v3, v6

    const/16 v4, 0xcf

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sum"

    aput-object v4, v3, v5

    const-string v4, "\u2211"

    aput-object v4, v3, v6

    const/16 v4, 0xd0

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "minus"

    aput-object v4, v3, v5

    const-string v4, "\u2212"

    aput-object v4, v3, v6

    const/16 v4, 0xd1

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lowast"

    aput-object v4, v3, v5

    const-string v4, "\u2217"

    aput-object v4, v3, v6

    const/16 v4, 0xd2

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "radic"

    aput-object v4, v3, v5

    const-string v4, "\u221a"

    aput-object v4, v3, v6

    const/16 v4, 0xd3

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "prop"

    aput-object v4, v3, v5

    const-string v4, "\u221d"

    aput-object v4, v3, v6

    const/16 v4, 0xd4

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "infin"

    aput-object v4, v3, v5

    const-string v4, "\u221e"

    aput-object v4, v3, v6

    const/16 v4, 0xd5

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ang"

    aput-object v4, v3, v5

    const-string v4, "\u2220"

    aput-object v4, v3, v6

    const/16 v4, 0xd6

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "and"

    aput-object v4, v3, v5

    const-string v4, "\u2227"

    aput-object v4, v3, v6

    const/16 v4, 0xd7

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "or"

    aput-object v4, v3, v5

    const-string v4, "\u2228"

    aput-object v4, v3, v6

    const/16 v4, 0xd8

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "cap"

    aput-object v4, v3, v5

    const-string v4, "\u2229"

    aput-object v4, v3, v6

    const/16 v4, 0xd9

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "cup"

    aput-object v4, v3, v5

    const-string v4, "\u222a"

    aput-object v4, v3, v6

    const/16 v4, 0xda

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "int"

    aput-object v4, v3, v5

    const-string v4, "\u222b"

    aput-object v4, v3, v6

    const/16 v4, 0xdb

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "there4"

    aput-object v4, v3, v5

    const-string v4, "\u2234"

    aput-object v4, v3, v6

    const/16 v4, 0xdc

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sim"

    aput-object v4, v3, v5

    const-string v4, "\u223c"

    aput-object v4, v3, v6

    const/16 v4, 0xdd

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "cong"

    aput-object v4, v3, v5

    const-string v4, "\u2245"

    aput-object v4, v3, v6

    const/16 v4, 0xde

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "asymp"

    aput-object v4, v3, v5

    const-string v4, "\u2248"

    aput-object v4, v3, v6

    const/16 v4, 0xdf

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ne"

    aput-object v4, v3, v5

    const-string v4, "\u2260"

    aput-object v4, v3, v6

    const/16 v4, 0xe0

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "equiv"

    aput-object v4, v3, v5

    const-string v4, "\u2261"

    aput-object v4, v3, v6

    const/16 v4, 0xe1

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "le"

    aput-object v4, v3, v5

    const-string v4, "\u2264"

    aput-object v4, v3, v6

    const/16 v4, 0xe2

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ge"

    aput-object v4, v3, v5

    const-string v4, "\u2265"

    aput-object v4, v3, v6

    const/16 v4, 0xe3

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sub"

    aput-object v4, v3, v5

    const-string v4, "\u2282"

    aput-object v4, v3, v6

    const/16 v4, 0xe4

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sup"

    aput-object v4, v3, v5

    const-string v4, "\u2283"

    aput-object v4, v3, v6

    const/16 v4, 0xe5

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "nsub"

    aput-object v4, v3, v5

    const-string v4, "\u2284"

    aput-object v4, v3, v6

    const/16 v4, 0xe6

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sube"

    aput-object v4, v3, v5

    const-string v4, "\u2286"

    aput-object v4, v3, v6

    const/16 v4, 0xe7

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "supe"

    aput-object v4, v3, v5

    const-string v4, "\u2287"

    aput-object v4, v3, v6

    const/16 v4, 0xe8

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "oplus"

    aput-object v4, v3, v5

    const-string v4, "\u2295"

    aput-object v4, v3, v6

    const/16 v4, 0xe9

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "otimes"

    aput-object v4, v3, v5

    const-string v4, "\u2297"

    aput-object v4, v3, v6

    const/16 v4, 0xea

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "perp"

    aput-object v4, v3, v5

    const-string v4, "\u22a5"

    aput-object v4, v3, v6

    const/16 v4, 0xeb

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sdot"

    aput-object v4, v3, v5

    const-string v4, "\u22c5"

    aput-object v4, v3, v6

    const/16 v4, 0xec

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lceil"

    aput-object v4, v3, v5

    const-string v4, "\u2308"

    aput-object v4, v3, v6

    const/16 v4, 0xed

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "rceil"

    aput-object v4, v3, v5

    const-string v4, "\u2309"

    aput-object v4, v3, v6

    const/16 v4, 0xee

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lfloor"

    aput-object v4, v3, v5

    const-string v4, "\u230a"

    aput-object v4, v3, v6

    const/16 v4, 0xef

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "rfloor"

    aput-object v4, v3, v5

    const-string v4, "\u230b"

    aput-object v4, v3, v6

    const/16 v4, 0xf0

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lang"

    aput-object v4, v3, v5

    const-string v4, "\u2329"

    aput-object v4, v3, v6

    const/16 v4, 0xf1

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "rang"

    aput-object v4, v3, v5

    const-string v4, "\u232a"

    aput-object v4, v3, v6

    const/16 v4, 0xf2

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "loz"

    aput-object v4, v3, v5

    const-string v4, "\u25ca"

    aput-object v4, v3, v6

    const/16 v4, 0xf3

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "spades"

    aput-object v4, v3, v5

    const-string v4, "\u2660"

    aput-object v4, v3, v6

    const/16 v4, 0xf4

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "clubs"

    aput-object v4, v3, v5

    const-string v4, "\u2663"

    aput-object v4, v3, v6

    const/16 v4, 0xf5

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "hearts"

    aput-object v4, v3, v5

    const-string v4, "\u2665"

    aput-object v4, v3, v6

    const/16 v4, 0xf6

    aput-object v3, v1, v4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "diams"

    aput-object v3, v2, v5

    const-string v3, "\u2666"

    aput-object v3, v2, v6

    const/16 v3, 0xf7

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;-><init>([[Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->defaultEntityReplacementMap:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    return-void
.end method

.method public constructor <init>([[Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityName:[Ljava/lang/String;

    new-array v1, v0, [[C

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityNameBuf:[[C

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityReplacement:[Ljava/lang/String;

    new-array v1, v0, [[C

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityReplacementBuf:[[C

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityNameHash:[I

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-direct {p0, v4, v3}, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "&#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityName:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, p2

    const/4 p2, 0x0

    :goto_0
    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityName:[Ljava/lang/String;

    array-length v4, v4

    if-ge p2, v4, :cond_1

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityName:[Ljava/lang/String;

    aget-object v4, v4, p2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityReplacement:[Ljava/lang/String;

    aget-object v3, v3, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityName:[Ljava/lang/String;

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->newString([CII)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityNameBuf:[[C

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityEnd:I

    aput-object v0, p1, v3

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityReplacement:[Ljava/lang/String;

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityEnd:I

    aput-object p2, p1, v0

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityReplacementBuf:[[C

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityEnd:I

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    aput-object p2, p1, v0

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityNameHash:[I

    iget p2, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityEnd:I

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityNameBuf:[[C

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityEnd:I

    aget-object v0, v0, v3

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityNameBuf:[[C

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityEnd:I

    aget-object v3, v3, v4

    array-length v3, v3

    invoke-static {v0, v1, v3}, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->fastHash([CII)I

    move-result v0

    aput v0, p1, p2

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityEnd:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityEnd:I

    return-void
.end method

.method private static fastHash([CII)I
    .registers 5

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget-char v0, p0, p1

    shl-int/lit8 v0, v0, 0x7

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    if-le p2, v1, :cond_1

    shl-int/lit8 v0, v0, 0x7

    div-int/lit8 v1, p2, 0x4

    add-int/2addr v1, p1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x8

    if-le p2, v1, :cond_2

    shl-int/lit8 v0, v0, 0x7

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    aget-char p0, p0, p1

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private newString([CII)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
