.class final Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;


# instance fields
.field final synthetic val$bufferSize:I

.field final synthetic val$containingDirectory:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$1;->val$containingDirectory:Ljava/io/File;

    iput p2, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$1;->val$bufferSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final makeDeferredOutputStream()Lorg/jf/dexlib2/writer/io/DeferredOutputStream;
    .registers 4

    const-string v0, "dexlibtmp"

    iget-object v1, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$1;->val$containingDirectory:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;

    iget v2, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$1;->val$bufferSize:I

    invoke-direct {v1, v0, v2}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;-><init>(Ljava/io/File;I)V

    return-object v1
.end method
