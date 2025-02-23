.class public Lorg/jf/baksmali/Adaptors/RegisterFormatter;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final options:Lorg/jf/baksmali/BaksmaliOptions;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final parameterRegisterCount:I

.field public final registerCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/jf/baksmali/BaksmaliOptions;II)V
    .registers 4
    .param p1    # Lorg/jf/baksmali/BaksmaliOptions;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iput p2, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->registerCount:I

    iput p3, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->parameterRegisterCount:I

    return-void
.end method


# virtual methods
.method public writeRegisterRange(Lorg/jf/util/IndentingWriter;II)V
    .registers 7

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->parameterRegisters:Z

    const/16 v1, 0x7d

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->registerCount:I

    iget v2, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->parameterRegisterCount:I

    sub-int/2addr v0, v2

    if-lt p2, v0, :cond_0

    const-string v0, "{p"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget v0, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->registerCount:I

    iget v2, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->parameterRegisterCount:I

    sub-int/2addr v0, v2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    const-string p2, " .. p"

    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget p2, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->registerCount:I

    iget v0, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->parameterRegisterCount:I

    sub-int/2addr p2, v0

    sub-int/2addr p3, p2

    :goto_0
    invoke-virtual {p1, p3}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void

    :cond_0
    const-string v0, "{v"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    const-string p2, " .. v"

    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;I)V
    .registers 5

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->parameterRegisters:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->registerCount:I

    iget v1, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->parameterRegisterCount:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    iget v0, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->registerCount:I

    iget v1, p0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->parameterRegisterCount:I

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    return-void

    :cond_0
    const/16 v0, 0x76

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    goto :goto_0
.end method
