.class public final Ldergoogler/dg1patch/c;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldergoogler/dg1patch/c;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Ldergoogler/dg1patch/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ldergoogler/dg1patch/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Ldergoogler/dg1patch/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldergoogler/dg1patch/a/k;

    if-nez v0, :cond_b

    move-object p2, v2

    :goto_a
    return-object p2

    :cond_b
    if-nez p2, :cond_4e

    iget-object v1, p0, Ldergoogler/dg1patch/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030003

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Ldergoogler/dg1patch/d;

    invoke-direct {v2}, Ldergoogler/dg1patch/d;-><init>()V

    const v1, 0x7f07001c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Ldergoogler/dg1patch/d;->a:Landroid/widget/TextView;

    const v1, 0x7f07001d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Ldergoogler/dg1patch/d;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_3f
    iget-object v2, v1, Ldergoogler/dg1patch/d;->a:Landroid/widget/TextView;

    iget-object v3, v0, Ldergoogler/dg1patch/a/k;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Ldergoogler/dg1patch/d;->b:Landroid/widget/TextView;

    iget-object v0, v0, Ldergoogler/dg1patch/a/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_4e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldergoogler/dg1patch/d;

    goto :goto_3f
.end method
