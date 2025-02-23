.class Lorg/jf/baksmali/Adaptors/MethodDefinition$2;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# instance fields
.field final synthetic this$0:Lorg/jf/baksmali/Adaptors/MethodDefinition;


# direct methods
.method constructor <init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition$2;->this$0:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    invoke-direct {p0, p2}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getSortOrder()D
    .registers 3

    const-wide v0, -0x3f70c00000000000L    # -1000.0

    return-wide v0
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 6

    const-string v0, "#@"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition$2;->codeAddress:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    const/4 p1, 0x1

    return p1
.end method
