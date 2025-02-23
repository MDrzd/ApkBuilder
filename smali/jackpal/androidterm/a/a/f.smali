.class final Ljackpal/androidterm/a/a/f;
.super Ljackpal/androidterm/a/a/e;


# instance fields
.field private a:Landroid/view/KeyCharacterMap;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljackpal/androidterm/a/a/e;-><init>()V

    check-cast p1, Landroid/view/KeyCharacterMap;

    iput-object p1, p0, Ljackpal/androidterm/a/a/f;->a:Landroid/view/KeyCharacterMap;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/a/f;->a:Landroid/view/KeyCharacterMap;

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v0

    return v0
.end method
