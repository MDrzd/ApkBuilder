.class Lorg/jf/dexlib2/base/BaseExceptionHandler$1;
.super Lorg/jf/dexlib2/base/reference/BaseTypeReference;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/base/BaseExceptionHandler;

.field final synthetic val$exceptionType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/base/BaseExceptionHandler;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/base/BaseExceptionHandler$1;->this$0:Lorg/jf/dexlib2/base/BaseExceptionHandler;

    iput-object p2, p0, Lorg/jf/dexlib2/base/BaseExceptionHandler$1;->val$exceptionType:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/base/BaseExceptionHandler$1;->val$exceptionType:Ljava/lang/String;

    return-object v0
.end method
