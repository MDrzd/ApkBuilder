.class final Ljackpal/androidterm/a/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljackpal/androidterm/a/p;

.field private e:Ljackpal/androidterm/a/p;

.field private f:Ljackpal/androidterm/a/p;

.field private g:Ljackpal/androidterm/a/p;

.field private h:I

.field private i:Z

.field private j:Ljackpal/androidterm/a/q;

.field private k:I

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>(Ljackpal/androidterm/a/q;)V
    .registers 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x100

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    new-instance v1, Ljackpal/androidterm/a/p;

    invoke-direct {v1, v0}, Ljackpal/androidterm/a/p;-><init>(Ljackpal/androidterm/a/o;)V

    iput-object v1, v0, Ljackpal/androidterm/a/o;->d:Ljackpal/androidterm/a/p;

    new-instance v1, Ljackpal/androidterm/a/p;

    invoke-direct {v1, v0}, Ljackpal/androidterm/a/p;-><init>(Ljackpal/androidterm/a/o;)V

    iput-object v1, v0, Ljackpal/androidterm/a/o;->e:Ljackpal/androidterm/a/p;

    new-instance v1, Ljackpal/androidterm/a/p;

    invoke-direct {v1, v0}, Ljackpal/androidterm/a/p;-><init>(Ljackpal/androidterm/a/o;)V

    iput-object v1, v0, Ljackpal/androidterm/a/o;->f:Ljackpal/androidterm/a/p;

    new-instance v1, Ljackpal/androidterm/a/p;

    invoke-direct {v1, v0}, Ljackpal/androidterm/a/p;-><init>(Ljackpal/androidterm/a/o;)V

    iput-object v1, v0, Ljackpal/androidterm/a/o;->g:Ljackpal/androidterm/a/p;

    move-object/from16 v1, p1

    iput-object v1, v0, Ljackpal/androidterm/a/o;->j:Ljackpal/androidterm/a/q;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;2D"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x7fffffeb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;3D"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x5fffffeb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;4D"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x40000015    # 2.000005f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;5D"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x60000015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;6D"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x3fffffeb    # -2.000005f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;7D"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x1fffffeb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;8D"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;2C"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x7fffffea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;3C"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x5fffffea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;4C"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x40000016    # 2.0000052f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;5C"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x60000016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;6C"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x3fffffea    # -2.0000052f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;7C"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x1fffffea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;8C"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;2A"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x7fffffed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;3A"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x5fffffed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;4A"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x40000013    # 2.0000045f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;5A"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x60000013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;6A"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x3fffffed    # -2.0000045f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;7A"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x1fffffed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;8A"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;2B"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x7fffffec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;3B"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x5fffffec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;4B"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x40000014    # 2.0000048f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;5B"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x60000014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;6B"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x3fffffec    # -2.0000048f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;7B"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x1fffffec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;8B"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000070

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[3;2~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x7fffff90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[3;3~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x40000070    # 2.0000267f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[3;5~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x2000007c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[2;2~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x7fffff84

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[2;3~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x4000007c    # 2.0000296f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[2;5~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x4000007a    # 2.000029f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;5H"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x4000007b    # 2.0000293f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;5F"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, -0x7fffffbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b\r"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x40000042    # 2.0000157f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\n"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x4000003e    # 2.0000148f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000083

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;2P"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000084

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;2Q"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000085

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;2R"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000086

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[1;2S"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000087

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[15;2~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[17;2~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x20000089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[18;2~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x2000008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[19;2~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x2000008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[20;2~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    const v2, 0x2000008c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u001b[21;2~"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\r"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b[A"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b[B"

    const/16 v4, 0x14

    aput-object v2, v1, v4

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b[C"

    const/16 v5, 0x16

    aput-object v2, v1, v5

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b[D"

    const/16 v6, 0x15

    aput-object v2, v1, v6

    const-string v1, "vt100"

    invoke-direct {v0, v1}, Ljackpal/androidterm/a/o;->b(Ljava/lang/String;)V

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b[32~"

    const/16 v7, 0x78

    aput-object v2, v1, v7

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b[34~"

    const/16 v7, 0x79

    aput-object v2, v1, v7

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\t"

    const/16 v7, 0x3d

    aput-object v2, v1, v7

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\r"

    const/16 v7, 0x42

    aput-object v2, v1, v7

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b"

    const/16 v7, 0x6f

    aput-object v2, v1, v7

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b[2~"

    const/16 v7, 0x7c

    aput-object v2, v1, v7

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b[3~"

    const/16 v8, 0x70

    aput-object v2, v1, v8

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b[5~"

    const/16 v9, 0x5c

    aput-object v2, v1, v9

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001b[6~"

    const/16 v10, 0x5d

    aput-object v2, v1, v10

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u007f"

    const/16 v11, 0x43

    aput-object v2, v1, v11

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\u001bOP"

    const/16 v11, 0x8f

    aput-object v2, v1, v11

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "/"

    const/16 v11, 0x9a

    aput-object v2, v1, v11

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "*"

    const/16 v12, 0x9b

    aput-object v2, v1, v12

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "-"

    const/16 v13, 0x9c

    aput-object v2, v1, v13

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "+"

    const/16 v14, 0x9d

    aput-object v2, v1, v14

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "\r"

    const/16 v15, 0xa0

    aput-object v2, v1, v15

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "="

    const/16 v16, 0xa1

    aput-object v2, v1, v16

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, ","

    const/16 v17, 0x9f

    aput-object v2, v1, v17

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    aget-object v2, v2, v8

    const/16 v8, 0x9e

    aput-object v2, v1, v8

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    aget-object v2, v2, v7

    const/16 v7, 0x90

    aput-object v2, v1, v7

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const/16 v7, 0x7b

    aget-object v2, v2, v7

    const/16 v7, 0x91

    aput-object v2, v1, v7

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    aget-object v2, v2, v4

    const/16 v4, 0x92

    aput-object v2, v1, v4

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    aget-object v2, v2, v10

    const/16 v4, 0x93

    aput-object v2, v1, v4

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    aget-object v2, v2, v6

    const/16 v4, 0x94

    aput-object v2, v1, v4

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v2, "5"

    const/16 v4, 0x95

    aput-object v2, v1, v4

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    aget-object v2, v2, v5

    const/16 v4, 0x96

    aput-object v2, v1, v4

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const/16 v4, 0x7a

    aget-object v2, v2, v4

    const/16 v4, 0x97

    aput-object v2, v1, v4

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    aget-object v2, v2, v3

    const/16 v3, 0x98

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, v0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    aget-object v2, v2, v9

    const/16 v3, 0x99

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOo"

    aput-object v2, v1, v11

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOj"

    aput-object v2, v1, v12

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOm"

    aput-object v2, v1, v13

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOk"

    aput-object v2, v1, v14

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOM"

    aput-object v2, v1, v15

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOX"

    aput-object v2, v1, v16

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOn"

    const/16 v3, 0x9e

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOl"

    const/16 v3, 0x9f

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOp"

    const/16 v3, 0x90

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOq"

    const/16 v3, 0x91

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOr"

    const/16 v3, 0x92

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOs"

    const/16 v3, 0x93

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOt"

    const/16 v3, 0x94

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOu"

    const/16 v3, 0x95

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOv"

    const/16 v3, 0x96

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOw"

    const/16 v3, 0x97

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOx"

    const/16 v3, 0x98

    aput-object v2, v1, v3

    iget-object v1, v0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    const-string v2, "\u001bOy"

    const/16 v3, 0x99

    aput-object v2, v1, v3

    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/a/o;->g()V

    return-void
.end method

.method private a(ZZI)I
    .registers 11

    const/16 v0, 0x39

    const/16 v1, 0x5f

    const/16 v2, 0x1c

    const/16 v3, 0x1b

    const/16 v4, 0x30

    const/16 v5, 0x41

    const/16 v6, 0x61

    if-eqz p1, :cond_10

    if-lt p3, v6, :cond_0

    const/16 p1, 0x7a

    if-gt p3, p1, :cond_0

    add-int/lit8 p3, p3, -0x61

    :goto_0
    add-int/lit8 p3, p3, 0x1

    :goto_1
    int-to-char p3, p3

    goto/16 :goto_14

    :cond_0
    if-lt p3, v5, :cond_1

    const/16 p1, 0x5a

    if-gt p3, p1, :cond_1

    add-int/lit8 p3, p3, -0x41

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    if-eq p3, p1, :cond_f

    const/16 p1, 0x32

    if-ne p3, p1, :cond_2

    goto :goto_7

    :cond_2
    const/16 p1, 0x5b

    if-eq p3, p1, :cond_e

    const/16 p1, 0x33

    if-ne p3, p1, :cond_3

    goto :goto_6

    :cond_3
    const/16 p1, 0x5c

    if-eq p3, p1, :cond_d

    const/16 p1, 0x34

    if-ne p3, p1, :cond_4

    goto :goto_5

    :cond_4
    const/16 p1, 0x5d

    if-eq p3, p1, :cond_c

    const/16 p1, 0x35

    if-ne p3, p1, :cond_5

    goto :goto_4

    :cond_5
    const/16 p1, 0x5e

    if-eq p3, p1, :cond_b

    const/16 p1, 0x36

    if-ne p3, p1, :cond_6

    goto :goto_3

    :cond_6
    if-eq p3, v1, :cond_a

    const/16 p1, 0x37

    if-ne p3, p1, :cond_7

    goto :goto_2

    :cond_7
    const/16 p1, 0x38

    if-ne p3, p1, :cond_8

    const/16 p3, 0x7f

    goto/16 :goto_14

    :cond_8
    if-ne p3, v0, :cond_9

    const p3, 0xa0008d

    goto/16 :goto_14

    :cond_9
    if-ne p3, v4, :cond_2e

    const p3, 0xa0008e

    goto/16 :goto_14

    :cond_a
    :goto_2
    const/16 p3, 0x1f

    goto/16 :goto_14

    :cond_b
    :goto_3
    const/16 p3, 0x1e

    goto/16 :goto_14

    :cond_c
    :goto_4
    const/16 p3, 0x1d

    goto/16 :goto_14

    :cond_d
    :goto_5
    const/16 p3, 0x1c

    goto/16 :goto_14

    :cond_e
    :goto_6
    const/16 p3, 0x1b

    goto/16 :goto_14

    :cond_f
    :goto_7
    const/4 p3, 0x0

    goto/16 :goto_14

    :cond_10
    if-eqz p2, :cond_2e

    const/16 p1, 0x77

    if-eq p3, p1, :cond_2d

    const/16 p1, 0x57

    if-ne p3, p1, :cond_11

    goto/16 :goto_13

    :cond_11
    if-eq p3, v6, :cond_2c

    if-ne p3, v5, :cond_12

    goto/16 :goto_12

    :cond_12
    const/16 p1, 0x73

    if-eq p3, p1, :cond_2b

    const/16 p1, 0x53

    if-ne p3, p1, :cond_13

    goto/16 :goto_11

    :cond_13
    const/16 p1, 0x64

    if-eq p3, p1, :cond_2a

    const/16 p1, 0x44

    if-ne p3, p1, :cond_14

    goto/16 :goto_10

    :cond_14
    const/16 p1, 0x70

    if-eq p3, p1, :cond_29

    const/16 p1, 0x50

    if-ne p3, p1, :cond_15

    goto/16 :goto_f

    :cond_15
    const/16 p1, 0x6e

    if-eq p3, p1, :cond_28

    const/16 p1, 0x4e

    if-ne p3, p1, :cond_16

    goto/16 :goto_e

    :cond_16
    const/16 p1, 0x74

    if-eq p3, p1, :cond_27

    const/16 p1, 0x54

    if-ne p3, p1, :cond_17

    goto/16 :goto_d

    :cond_17
    const/16 p1, 0x6c

    if-eq p3, p1, :cond_26

    const/16 p1, 0x4c

    if-ne p3, p1, :cond_18

    goto/16 :goto_c

    :cond_18
    const/16 p1, 0x75

    if-eq p3, p1, :cond_25

    const/16 p1, 0x55

    if-ne p3, p1, :cond_19

    goto :goto_b

    :cond_19
    const/16 p1, 0x65

    if-eq p3, p1, :cond_e

    const/16 p1, 0x45

    if-ne p3, p1, :cond_1a

    goto :goto_6

    :cond_1a
    const/16 p1, 0x2e

    if-ne p3, p1, :cond_1b

    goto :goto_5

    :cond_1b
    if-le p3, v4, :cond_1c

    if-gt p3, v0, :cond_1c

    const/high16 p1, 0xa00000

    add-int/2addr p3, p1

    add-int/lit16 p3, p3, 0x83

    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_1

    :cond_1c
    if-ne p3, v4, :cond_1d

    const p3, 0xa0008c

    goto :goto_14

    :cond_1d
    const/16 p1, 0x69

    if-eq p3, p1, :cond_24

    const/16 p1, 0x49

    if-ne p3, p1, :cond_1e

    goto :goto_a

    :cond_1e
    const/16 p1, 0x78

    if-eq p3, p1, :cond_23

    const/16 p1, 0x58

    if-ne p3, p1, :cond_1f

    goto :goto_9

    :cond_1f
    const/16 p1, 0x68

    if-eq p3, p1, :cond_22

    const/16 p1, 0x48

    if-ne p3, p1, :cond_20

    goto :goto_8

    :cond_20
    const/16 p1, 0x66

    if-eq p3, p1, :cond_21

    const/16 p1, 0x46

    if-ne p3, p1, :cond_2e

    :cond_21
    const p3, 0xa0007b

    goto :goto_14

    :cond_22
    :goto_8
    const p3, 0xa0007a

    goto :goto_14

    :cond_23
    :goto_9
    const p3, 0xa00070

    goto :goto_14

    :cond_24
    :goto_a
    const p3, 0xa0007c

    goto :goto_14

    :cond_25
    :goto_b
    const/16 p3, 0x5f

    goto :goto_14

    :cond_26
    :goto_c
    const/16 p3, 0x7c

    goto :goto_14

    :cond_27
    :goto_d
    const p3, 0xa0003d

    goto :goto_14

    :cond_28
    :goto_e
    const p3, 0xa0005d

    goto :goto_14

    :cond_29
    :goto_f
    const p3, 0xa0005c

    goto :goto_14

    :cond_2a
    :goto_10
    const p3, 0xa00016

    goto :goto_14

    :cond_2b
    :goto_11
    const p3, 0xa00014

    goto :goto_14

    :cond_2c
    :goto_12
    const p3, 0xa00015

    goto :goto_14

    :cond_2d
    :goto_13
    const p3, 0xa00013

    :cond_2e
    :goto_14
    if-ltz p3, :cond_2f

    iget-object p1, p0, Ljackpal/androidterm/a/o;->d:Ljackpal/androidterm/a/p;

    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->c()V

    iget-object p1, p0, Ljackpal/androidterm/a/o;->e:Ljackpal/androidterm/a/p;

    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->c()V

    iget-object p1, p0, Ljackpal/androidterm/a/o;->f:Ljackpal/androidterm/a/p;

    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->c()V

    iget-object p1, p0, Ljackpal/androidterm/a/o;->g:Ljackpal/androidterm/a/p;

    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->c()V

    invoke-direct {p0}, Ljackpal/androidterm/a/o;->g()V

    :cond_2f
    return p3
.end method

.method static a(Landroid/view/KeyEvent;)Z
    .registers 4

    sget v0, Ljackpal/androidterm/a/a/b;->a:I

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p0

    invoke-static {p0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p0

    invoke-static {p0}, Ljackpal/androidterm/a/a/e;->a(Ljava/lang/Object;)Ljackpal/androidterm/a/a/e;

    move-result-object p0

    invoke-virtual {p0}, Ljackpal/androidterm/a/a/e;->a()I

    move-result p0

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .registers 15

    const-string v0, "xterm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x91

    const/16 v2, 0x7a

    const/16 v3, 0x97

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v4, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v5, "\u001bOH"

    aput-object v5, v4, v2

    aput-object v5, v0, v3

    iget-object v0, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const/16 v3, 0x7b

    const-string v4, "\u001bOF"

    aput-object v4, v2, v3

    aput-object v4, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v4, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v5, "\u001b[1~"

    aput-object v5, v4, v2

    aput-object v5, v0, v3

    iget-object v0, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const/16 v3, 0x7b

    const-string v4, "\u001b[4~"

    aput-object v4, v2, v3

    aput-object v4, v0, v1

    :goto_0
    const-string v0, "vt100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8e

    const/16 v2, 0x8d

    const/16 v3, 0x8c

    const/16 v4, 0x8b

    const/16 v5, 0x8a

    const/16 v6, 0x89

    const/16 v7, 0x88

    const/16 v8, 0x87

    const/16 v9, 0x86

    const/16 v10, 0x85

    const/16 v11, 0x84

    const/16 v12, 0x83

    if-eqz v0, :cond_1

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOP"

    aput-object v0, p1, v12

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOQ"

    aput-object v0, p1, v11

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOR"

    aput-object v0, p1, v10

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOS"

    aput-object v0, p1, v9

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOt"

    aput-object v0, p1, v8

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOu"

    aput-object v0, p1, v7

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOv"

    aput-object v0, p1, v6

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOl"

    aput-object v0, p1, v5

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOw"

    aput-object v0, p1, v4

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOx"

    aput-object v0, p1, v3

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[23~"

    aput-object v0, p1, v2

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[24~"

    aput-object v0, p1, v1

    return-void

    :cond_1
    const-string v0, "linux"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[[A"

    aput-object v0, p1, v12

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[[B"

    aput-object v0, p1, v11

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[[C"

    aput-object v0, p1, v10

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[[D"

    aput-object v0, p1, v9

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[[E"

    aput-object v0, p1, v8

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[17~"

    aput-object v0, p1, v7

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[18~"

    aput-object v0, p1, v6

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[19~"

    aput-object v0, p1, v5

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[20~"

    aput-object v0, p1, v4

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[21~"

    aput-object v0, p1, v3

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[23~"

    aput-object v0, p1, v2

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[24~"

    aput-object v0, p1, v1

    return-void

    :cond_2
    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOP"

    aput-object v0, p1, v12

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOQ"

    aput-object v0, p1, v11

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOR"

    aput-object v0, p1, v10

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001bOS"

    aput-object v0, p1, v9

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[15~"

    aput-object v0, p1, v8

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[17~"

    aput-object v0, p1, v7

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[18~"

    aput-object v0, p1, v6

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[19~"

    aput-object v0, p1, v5

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[20~"

    aput-object v0, p1, v4

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[21~"

    aput-object v0, p1, v3

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[23~"

    aput-object v0, p1, v2

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v0, "\u001b[24~"

    aput-object v0, p1, v1

    return-void
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/o;->e:Ljackpal/androidterm/a/p;

    invoke-virtual {v0}, Ljackpal/androidterm/a/p;->e()I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Ljackpal/androidterm/a/o;->d:Ljackpal/androidterm/a/p;

    invoke-virtual {v1}, Ljackpal/androidterm/a/p;->e()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    iget-object v1, p0, Ljackpal/androidterm/a/o;->f:Ljackpal/androidterm/a/p;

    invoke-virtual {v1}, Ljackpal/androidterm/a/p;->e()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Ljackpal/androidterm/a/o;->g:Ljackpal/androidterm/a/p;

    invoke-virtual {v1}, Ljackpal/androidterm/a/p;->e()I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    iput v0, p0, Ljackpal/androidterm/a/o;->h:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/a/o;->i:Z

    return-void
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Ljackpal/androidterm/a/o;->k:I

    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)V
    .registers 3

    invoke-static {p2}, Ljackpal/androidterm/a/o;->a(Landroid/view/KeyEvent;)Z

    move-result p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/a/o;->e:Ljackpal/androidterm/a/p;

    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->b()V

    invoke-direct {p0}, Ljackpal/androidterm/a/o;->g()V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/a/o;->d:Ljackpal/androidterm/a/p;

    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->b()V

    invoke-direct {p0}, Ljackpal/androidterm/a/o;->g()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILandroid/view/KeyEvent;ZZ)V
    .registers 12

    invoke-virtual {p0, p1, p2, p3}, Ljackpal/androidterm/a/o;->a(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_c

    const/16 v1, 0x77

    if-eq p1, v1, :cond_b

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p4, :cond_2

    iget-object v1, p0, Ljackpal/androidterm/a/o;->e:Ljackpal/androidterm/a/p;

    invoke-virtual {v1}, Ljackpal/androidterm/a/p;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz p4, :cond_3

    iget-object v4, p0, Ljackpal/androidterm/a/o;->d:Ljackpal/androidterm/a/p;

    invoke-virtual {v4}, Ljackpal/androidterm/a/p;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    and-int/lit16 v5, p1, -0x7001

    if-eqz v1, :cond_4

    or-int/lit8 v5, v5, 0x1

    :cond_4
    if-nez p4, :cond_5

    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    :cond_5
    const/16 v1, 0x1b

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Ljackpal/androidterm/a/o;->l:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Ljackpal/androidterm/a/o;->j:Ljackpal/androidterm/a/q;

    new-array v6, v2, [B

    aput-byte v1, v6, v3

    invoke-virtual {v4, v6, v3, v2}, Ljackpal/androidterm/a/q;->a([BII)V

    and-int/lit8 v5, v5, -0x33

    goto :goto_3

    :cond_6
    or-int/lit8 v5, v5, 0x2

    :cond_7
    :goto_3
    const/high16 v4, 0x10000

    and-int/2addr p1, v4

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Ljackpal/androidterm/a/o;->l:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Ljackpal/androidterm/a/o;->j:Ljackpal/androidterm/a/q;

    new-array v4, v2, [B

    aput-byte v1, v4, v3

    invoke-virtual {p1, v4, v3, v2}, Ljackpal/androidterm/a/q;->a([BII)V

    const p1, -0x70001

    and-int/2addr v5, p1

    :cond_8
    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p1

    const/high16 p2, -0x80000000

    and-int/2addr p2, p1

    if-eqz p2, :cond_9

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    iput p1, p0, Ljackpal/androidterm/a/o;->m:I

    return-void

    :cond_9
    iget p2, p0, Ljackpal/androidterm/a/o;->m:I

    if-eqz p2, :cond_d

    iget p2, p0, Ljackpal/androidterm/a/o;->m:I

    invoke-static {p2, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p1

    iput v3, p0, Ljackpal/androidterm/a/o;->m:I

    goto :goto_6

    :pswitch_0
    return-void

    :pswitch_1
    if-eqz p4, :cond_a

    iget-object p1, p0, Ljackpal/androidterm/a/o;->e:Ljackpal/androidterm/a/p;

    goto :goto_4

    :pswitch_2
    if-eqz p4, :cond_a

    iget-object p1, p0, Ljackpal/androidterm/a/o;->d:Ljackpal/androidterm/a/p;

    :goto_4
    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->a()V

    invoke-direct {p0}, Ljackpal/androidterm/a/o;->g()V

    :cond_a
    const/4 p1, -0x1

    goto :goto_5

    :cond_b
    return-void

    :cond_c
    iget v0, p0, Ljackpal/androidterm/a/o;->k:I

    move p1, v0

    :goto_5
    const/4 v0, 0x0

    :cond_d
    :goto_6
    if-nez v0, :cond_f

    iget-boolean p2, p0, Ljackpal/androidterm/a/o;->i:Z

    if-nez p2, :cond_f

    if-eqz p4, :cond_e

    iget-object p2, p0, Ljackpal/androidterm/a/o;->f:Ljackpal/androidterm/a/p;

    invoke-virtual {p2}, Ljackpal/androidterm/a/p;->d()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_7

    :cond_e
    const/4 p2, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    const/4 p2, 0x1

    :goto_8
    if-eqz p4, :cond_10

    iget-object p4, p0, Ljackpal/androidterm/a/o;->g:Ljackpal/androidterm/a/p;

    invoke-virtual {p4}, Ljackpal/androidterm/a/p;->d()Z

    move-result p4

    if-eqz p4, :cond_10

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    invoke-direct {p0, p2, v2, p1}, Ljackpal/androidterm/a/o;->a(ZZI)I

    move-result p1

    const/high16 p2, 0xa00000

    if-lt p1, p2, :cond_11

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Ljackpal/androidterm/a/o;->a(ILandroid/view/KeyEvent;Z)Z

    return-void

    :cond_11
    if-ltz p1, :cond_12

    iget-object p2, p0, Ljackpal/androidterm/a/o;->j:Ljackpal/androidterm/a/q;

    invoke-virtual {p2, p1}, Ljackpal/androidterm/a/q;->a(I)V

    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x71
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/o;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 12

    const/16 v0, 0x15

    const/16 v1, 0x94

    const/16 v2, 0x16

    const/16 v3, 0x96

    const/16 v4, 0x14

    const/16 v5, 0x92

    const/16 v6, 0x13

    const/16 v7, 0x98

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v8, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v9, "\u001bOA"

    aput-object v9, v8, v6

    aput-object v9, p1, v7

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v6, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v7, "\u001bOB"

    aput-object v7, v6, v4

    aput-object v7, p1, v5

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v4, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v5, "\u001bOC"

    aput-object v5, v4, v2

    aput-object v5, p1, v3

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v3, "\u001bOD"

    aput-object v3, v2, v0

    aput-object v3, p1, v1

    return-void

    :cond_0
    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v8, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v9, "\u001b[A"

    aput-object v9, v8, v6

    aput-object v9, p1, v7

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v6, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v7, "\u001b[B"

    aput-object v7, v6, v4

    aput-object v7, p1, v5

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v4, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v5, "\u001b[C"

    aput-object v5, v4, v2

    aput-object v5, p1, v3

    iget-object p1, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    iget-object v2, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    const-string v3, "\u001b[D"

    aput-object v3, v2, v0

    aput-object v3, p1, v1

    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;Z)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    iget-boolean v2, p0, Ljackpal/androidterm/a/o;->i:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ljackpal/androidterm/a/o;->f:Ljackpal/androidterm/a/p;

    invoke-virtual {v2}, Ljackpal/androidterm/a/p;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    :cond_3
    sget-object v3, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p2

    const/high16 v4, 0x10000000

    or-int/2addr p2, v4

    or-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_5

    sget-object p2, Ljackpal/androidterm/a/o;->a:Ljava/util/Map;

    or-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :cond_5
    :goto_2
    if-nez p2, :cond_7

    if-ltz p1, :cond_7

    iget-object v2, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_7

    if-eqz p3, :cond_6

    iget-object p2, p0, Ljackpal/androidterm/a/o;->c:[Ljava/lang/String;

    aget-object p2, p2, p1

    :cond_6
    if-nez p2, :cond_7

    iget-object p2, p0, Ljackpal/androidterm/a/o;->b:[Ljava/lang/String;

    aget-object p2, p2, p1

    :cond_7
    if-eqz p2, :cond_8

    iget-object p1, p0, Ljackpal/androidterm/a/o;->j:Ljackpal/androidterm/a/q;

    invoke-virtual {p1, p2}, Ljackpal/androidterm/a/q;->d(Ljava/lang/String;)V

    return v0

    :cond_8
    return v1
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/o;->m:I

    return v0
.end method

.method public final b(I)I
    .registers 4

    iget-boolean v0, p0, Ljackpal/androidterm/a/o;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljackpal/androidterm/a/o;->f:Ljackpal/androidterm/a/p;

    invoke-virtual {v0}, Ljackpal/androidterm/a/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Ljackpal/androidterm/a/o;->g:Ljackpal/androidterm/a/p;

    invoke-virtual {v1}, Ljackpal/androidterm/a/p;->d()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Ljackpal/androidterm/a/o;->a(ZZI)I

    move-result p1

    return p1
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Ljackpal/androidterm/a/o;->l:Z

    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/o;->h:I

    return v0
.end method

.method public final c(Z)V
    .registers 2

    iput-boolean p1, p0, Ljackpal/androidterm/a/o;->i:Z

    return-void
.end method

.method public final d(Z)V
    .registers 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/a/o;->f:Ljackpal/androidterm/a/p;

    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljackpal/androidterm/a/o;->f:Ljackpal/androidterm/a/p;

    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->b()V

    :goto_0
    invoke-direct {p0}, Ljackpal/androidterm/a/o;->g()V

    return-void
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/a/o;->l:Z

    return v0
.end method

.method public final e(Z)V
    .registers 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/a/o;->g:Ljackpal/androidterm/a/p;

    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljackpal/androidterm/a/o;->g:Ljackpal/androidterm/a/p;

    invoke-virtual {p1}, Ljackpal/androidterm/a/p;->b()V

    :goto_0
    invoke-direct {p0}, Ljackpal/androidterm/a/o;->g()V

    return-void
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/o;->d:Ljackpal/androidterm/a/p;

    invoke-virtual {v0}, Ljackpal/androidterm/a/p;->d()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/o;->f:Ljackpal/androidterm/a/p;

    invoke-virtual {v0}, Ljackpal/androidterm/a/p;->d()Z

    move-result v0

    return v0
.end method
