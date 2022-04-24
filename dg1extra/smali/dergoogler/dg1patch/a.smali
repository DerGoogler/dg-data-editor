.class public final Ldergoogler/dg1patch/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ldergoogler/dg1patch/PrefDetailActivity;

.field private b:I

.field private c:Ljava/util/List;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Ldergoogler/dg1patch/PrefDetailActivity;Ljava/util/Map;IZ)V
    .registers 11

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldergoogler/dg1patch/a;->c:Ljava/util/List;

    iput-boolean v4, p0, Ldergoogler/dg1patch/a;->i:Z

    iput-object p1, p0, Ldergoogler/dg1patch/a;->a:Ldergoogler/dg1patch/PrefDetailActivity;

    iput p3, p0, Ldergoogler/dg1patch/a;->b:I

    iput-boolean v3, p0, Ldergoogler/dg1patch/a;->j:Z

    invoke-direct {p0, p2}, Ldergoogler/dg1patch/a;->a(Ljava/util/Map;)V

    invoke-virtual {p0}, Ldergoogler/dg1patch/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f070014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldergoogler/dg1patch/a;->d:Landroid/widget/TextView;

    const v0, 0x7f070016

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ldergoogler/dg1patch/a;->e:Landroid/widget/EditText;

    const v0, 0x7f070018

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ldergoogler/dg1patch/a;->f:Landroid/widget/EditText;

    const v0, 0x7f070013

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldergoogler/dg1patch/a;->g:Landroid/widget/ImageView;

    const v0, 0x7f070012

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldergoogler/dg1patch/a;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Ldergoogler/dg1patch/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Ldergoogler/dg1patch/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ldergoogler/dg1patch/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Ldergoogler/dg1patch/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070019

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07001a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-boolean v3, p0, Ldergoogler/dg1patch/a;->j:Z

    if-nez v3, :cond_b6

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Ldergoogler/dg1patch/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_91
    const v0, 0x7f07001b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Ldergoogler/dg1patch/a;->b:I

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a;->a(I)V

    invoke-super {p0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-super {p0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-super {p0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void

    :cond_b6
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_91
.end method

.method private a(I)V
    .registers 6

    iget-object v0, p0, Ldergoogler/dg1patch/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldergoogler/dg1patch/b;

    iget-object v1, p0, Ldergoogler/dg1patch/a;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Ldergoogler/dg1patch/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ldergoogler/dg1patch/a;->e:Landroid/widget/EditText;

    iget-object v2, v0, Ldergoogler/dg1patch/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ldergoogler/dg1patch/a;->f:Landroid/widget/EditText;

    iget-object v0, v0, Ldergoogler/dg1patch/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 6

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ldergoogler/dg1patch/b;

    invoke-direct {v2}, Ldergoogler/dg1patch/b;-><init>()V

    iput-object v0, v2, Ldergoogler/dg1patch/b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldergoogler/dg1patch/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ldergoogler/dg1patch/b;->c:Ljava/lang/String;

    :goto_32
    iget-object v0, p0, Ldergoogler/dg1patch/a;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_38
    const-string v0, ""

    iput-object v0, v2, Ldergoogler/dg1patch/b;->b:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, v2, Ldergoogler/dg1patch/b;->c:Ljava/lang/String;

    goto :goto_32
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070013

    if-ne v0, v1, :cond_30

    iget v0, p0, Ldergoogler/dg1patch/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ldergoogler/dg1patch/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget v0, p0, Ldergoogler/dg1patch/a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a;->a(I)V

    iget v0, p0, Ldergoogler/dg1patch/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldergoogler/dg1patch/a;->b:I

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Ldergoogler/dg1patch/a;->a:Ldergoogler/dg1patch/PrefDetailActivity;

    const-string v1, "No more values!"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_23

    :cond_30
    const v1, 0x7f070012

    if-ne v0, v1, :cond_53

    iget v0, p0, Ldergoogler/dg1patch/a;->b:I

    if-lez v0, :cond_47

    iget v0, p0, Ldergoogler/dg1patch/a;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a;->a(I)V

    iget v0, p0, Ldergoogler/dg1patch/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldergoogler/dg1patch/a;->b:I

    goto :goto_23

    :cond_47
    iget-object v0, p0, Ldergoogler/dg1patch/a;->a:Ldergoogler/dg1patch/PrefDetailActivity;

    const-string v1, "No more values!"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_23

    :cond_53
    const v1, 0x7f07001a

    if-ne v0, v1, :cond_dd

    :try_start_58
    iget-object v0, p0, Ldergoogler/dg1patch/a;->c:Ljava/util/List;

    iget v1, p0, Ldergoogler/dg1patch/a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldergoogler/dg1patch/b;

    iget-object v2, v0, Ldergoogler/dg1patch/b;->c:Ljava/lang/String;

    iget-object v1, p0, Ldergoogler/dg1patch/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Integer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    :cond_7a
    :goto_7a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ldergoogler/dg1patch/b;->b:Ljava/lang/String;

    iget-object v2, p0, Ldergoogler/dg1patch/a;->a:Ldergoogler/dg1patch/PrefDetailActivity;

    iget-object v0, v0, Ldergoogler/dg1patch/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ldergoogler/dg1patch/PrefDetailActivity;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Ldergoogler/dg1patch/a;->a:Ldergoogler/dg1patch/PrefDetailActivity;

    const-string v1, "Succeed!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_93} :catch_ce

    :goto_93
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldergoogler/dg1patch/a;->i:Z

    goto :goto_23

    :cond_97
    :try_start_97
    const-string v3, "Float"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto :goto_7a

    :cond_a4
    const-string v3, "Long"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_7a

    :cond_b1
    const-string v3, "String"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "Boolean"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_7a

    :cond_c6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Value type not supported!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_ce} :catch_ce

    :catch_ce
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldergoogler/dg1patch/a;->a:Ldergoogler/dg1patch/PrefDetailActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_93

    :cond_dd
    const v1, 0x7f07001b

    if-ne v0, v1, :cond_23

    invoke-virtual {p0}, Ldergoogler/dg1patch/a;->cancel()V

    iget-boolean v0, p0, Ldergoogler/dg1patch/a;->i:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Ldergoogler/dg1patch/a;->a:Ldergoogler/dg1patch/PrefDetailActivity;

    invoke-virtual {v0}, Ldergoogler/dg1patch/PrefDetailActivity;->a()V

    goto/16 :goto_23
.end method
