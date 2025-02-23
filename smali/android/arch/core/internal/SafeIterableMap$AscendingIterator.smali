.class Landroid/arch/core/internal/SafeIterableMap$AscendingIterator;
.super Landroid/arch/core/internal/SafeIterableMap$ListIterator;


# direct methods
.method constructor <init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    return-void
.end method


# virtual methods
.method backward(Landroid/arch/core/internal/SafeIterableMap$Entry;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .registers 2

    iget-object p1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object p1
.end method

.method forward(Landroid/arch/core/internal/SafeIterableMap$Entry;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .registers 2

    iget-object p1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object p1
.end method
