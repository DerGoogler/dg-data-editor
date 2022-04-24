.class public final Ldergoogler/dg1patch/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TableLayout;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/List;

.field private e:Landroid/widget/TableRow;

.field private f:Ldergoogler/dg1patch/a/d;

.field private g:Ldergoogler/dg1patch/a/h;

.field private h:Landroid/widget/TableLayout$LayoutParams;

.field private i:Landroid/widget/TableRow$LayoutParams;

.field private j:[Landroid/widget/TableRow;

.field private k:[Landroid/view/View;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldergoogler/dg1patch/a/d;Landroid/widget/TableLayout;Ldergoogler/dg1patch/a/h;Z)V
    .registers 8

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Ldergoogler/dg1patch/a/g;->m:I

    const v0, -0xcccccd

    iput v0, p0, Ldergoogler/dg1patch/a/g;->n:I

    const v0, -0x160d04

    iput v0, p0, Ldergoogler/dg1patch/a/g;->o:I

    const v0, -0x333334

    iput v0, p0, Ldergoogler/dg1patch/a/g;->p:I

    iput v1, p0, Ldergoogler/dg1patch/a/g;->q:I

    const v0, -0x805081

    iput v0, p0, Ldergoogler/dg1patch/a/g;->r:I

    iput-object p1, p0, Ldergoogler/dg1patch/a/g;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Ldergoogler/dg1patch/a/g;->f:Ldergoogler/dg1patch/a/d;

    iput-object p3, p0, Ldergoogler/dg1patch/a/g;->b:Landroid/widget/TableLayout;

    iput-object p4, p0, Ldergoogler/dg1patch/a/g;->g:Ldergoogler/dg1patch/a/h;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    const/16 v3, 0x8

    const/4 v1, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Ldergoogler/dg1patch/a/g;->h:Landroid/widget/TableLayout$LayoutParams;

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput-object v0, p0, Ldergoogler/dg1patch/a/g;->i:Landroid/widget/TableRow$LayoutParams;

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->i:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v5, [Landroid/widget/TableRow;

    iput-object v0, p0, Ldergoogler/dg1patch/a/g;->j:[Landroid/widget/TableRow;

    new-array v7, v6, [Landroid/widget/TextView;

    new-array v0, v5, [Landroid/view/View;

    iput-object v0, p0, Ldergoogler/dg1patch/a/g;->k:[Landroid/view/View;

    move v4, v2

    :goto_2e
    if-lt v4, v5, :cond_31

    return-void

    :cond_31
    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->j:[Landroid/widget/TableRow;

    new-instance v3, Landroid/widget/TableRow;

    iget-object v8, p0, Ldergoogler/dg1patch/a/g;->a:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v4

    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->j:[Landroid/widget/TableRow;

    aget-object v1, v1, v4

    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->setId(I)V

    move v3, v2

    :goto_4c
    if-lt v3, v6, :cond_69

    move v0, v2

    :goto_4f
    if-lt v0, v6, :cond_88

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->k:[Landroid/view/View;

    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Ldergoogler/dg1patch/a/g;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->k:[Landroid/view/View;

    aget-object v0, v0, v4

    iget v1, p0, Ldergoogler/dg1patch/a/g;->p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2e

    :cond_69
    new-instance v1, Landroid/widget/TextView;

    iget-object v8, p0, Ldergoogler/dg1patch/a/g;->a:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v7, v3

    aget-object v1, v7, v3

    iget v8, p0, Ldergoogler/dg1patch/a/g;->n:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    aget-object v8, v7, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4c

    :cond_88
    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->j:[Landroid/widget/TableRow;

    aget-object v1, v1, v4

    aget-object v3, v7, v0

    iget-object v8, p0, Ldergoogler/dg1patch/a/g;->i:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v1, v3, v0, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Ldergoogler/dg1patch/a/g;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Ldergoogler/dg1patch/a/g;->d:Ljava/util/List;

    return-void
.end method

.method public final b()V
    .registers 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    iput-boolean v6, p0, Ldergoogler/dg1patch/a/g;->l:Z

    new-instance v0, Landroid/widget/TableRow;

    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldergoogler/dg1patch/a/g;->e:Landroid/widget/TableRow;

    move v1, v2

    :goto_14
    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_44

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->e:Landroid/widget/TableRow;

    iget v1, p0, Ldergoogler/dg1patch/a/g;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->b:Landroid/widget/TableLayout;

    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->e:Landroid/widget/TableRow;

    iget-object v3, p0, Ldergoogler/dg1patch/a/g;->h:Landroid/widget/TableLayout$LayoutParams;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v5, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    :goto_37
    iget-object v3, p0, Ldergoogler/dg1patch/a/g;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_66

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->f:Ldergoogler/dg1patch/a/d;

    if-nez v0, :cond_43

    :cond_43
    return-void

    :cond_44
    new-instance v3, Landroid/widget/TextView;

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v0, p0, Ldergoogler/dg1patch/a/g;->q:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->e:Landroid/widget/TableRow;

    iget-object v4, p0, Ldergoogler/dg1patch/a/g;->i:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_66
    iget-object v3, p0, Ldergoogler/dg1patch/a/g;->b:Landroid/widget/TableLayout;

    iget-object v4, p0, Ldergoogler/dg1patch/a/g;->j:[Landroid/widget/TableRow;

    aget-object v4, v4, v2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Ldergoogler/dg1patch/a/g;->j:[Landroid/widget/TableRow;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Ldergoogler/dg1patch/a/g;->j:[Landroid/widget/TableRow;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Ldergoogler/dg1patch/a/g;->b:Landroid/widget/TableLayout;

    iget-object v4, p0, Ldergoogler/dg1patch/a/g;->k:[Landroid/view/View;

    aget-object v4, v4, v2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37
.end method

.method public final b(Ljava/util/List;)V
    .registers 11

    const/16 v8, 0x8

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v5

    :goto_e
    if-lt v6, v3, :cond_1c

    move v0, v3

    :goto_11
    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4e

    iput-boolean v5, p0, Ldergoogler/dg1patch/a/g;->l:Z

    return-void

    :cond_1c
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v4, v5

    :goto_23
    if-lt v4, v7, :cond_37

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->j:[Landroid/widget/TableRow;

    aget-object v0, v0, v6

    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/g;->k:[Landroid/view/View;

    aget-object v0, v0, v6

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_e

    :cond_37
    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->j:[Landroid/widget/TableRow;

    aget-object v1, v1, v6

    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_23

    :cond_4e
    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->j:[Landroid/widget/TableRow;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->k:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->g:Ldergoogler/dg1patch/a/h;

    if-eqz v1, :cond_f

    iget-object v1, p0, Ldergoogler/dg1patch/a/g;->g:Ldergoogler/dg1patch/a/h;

    iget-boolean v2, p0, Ldergoogler/dg1patch/a/g;->l:Z

    invoke-interface {v1, v0, v2}, Ldergoogler/dg1patch/a/h;->a(IZ)V

    :cond_f
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Ldergoogler/dg1patch/a/g;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_c
    :goto_c
    return v2

    :cond_d
    if-ne v0, v2, :cond_18

    iget v0, p0, Ldergoogler/dg1patch/a/g;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_c

    :cond_18
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_20

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    :cond_20
    iget v0, p0, Ldergoogler/dg1patch/a/g;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_c
.end method
