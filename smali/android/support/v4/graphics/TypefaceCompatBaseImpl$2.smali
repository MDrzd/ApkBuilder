.class Landroid/support/v4/graphics/TypefaceCompatBaseImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;


# instance fields
.field final synthetic this$0:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/graphics/TypefaceCompatBaseImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$2;->this$0:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeight(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;)I
    .registers 2

    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getWeight(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$2;->getWeight(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;)I

    move-result p1

    return p1
.end method

.method public isItalic(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isItalic(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$2;->isItalic(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;)Z

    move-result p1

    return p1
.end method
