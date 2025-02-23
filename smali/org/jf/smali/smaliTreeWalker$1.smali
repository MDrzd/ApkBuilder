.class Lorg/jf/smali/smaliTreeWalker$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/smali/WithRegister;


# instance fields
.field final synthetic this$0:Lorg/jf/smali/smaliTreeWalker;

.field final synthetic val$indexGuess:I


# direct methods
.method constructor <init>(Lorg/jf/smali/smaliTreeWalker;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/smali/smaliTreeWalker$1;->this$0:Lorg/jf/smali/smaliTreeWalker;

    iput p2, p0, Lorg/jf/smali/smaliTreeWalker$1;->val$indexGuess:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegister()I
    .registers 2

    iget v0, p0, Lorg/jf/smali/smaliTreeWalker$1;->val$indexGuess:I

    return v0
.end method
