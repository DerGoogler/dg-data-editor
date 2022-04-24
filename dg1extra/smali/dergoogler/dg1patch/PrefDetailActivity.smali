.class public Ldergoogler/dg1patch/PrefDetailActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ldergoogler/dg1patch/a/h;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ldergoogler/dg1patch/f;

.field private e:Landroid/widget/ScrollView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TableLayout;

.field private h:Ljava/util/LinkedHashMap;

.field private i:Ljava/util/LinkedHashMap;

.field private j:Ljava/util/ArrayList;

.field private k:Z

.field private l:Ldergoogler/dg1patch/a/g;

.field private m:Ldergoogler/dg1patch/e;

.field private n:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->k:Z

    new-instance v0, Ldergoogler/dg1patch/e;

    invoke-direct {v0, p0}, Ldergoogler/dg1patch/e;-><init>(Ldergoogler/dg1patch/PrefDetailActivity;)V

    iput-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->m:Ldergoogler/dg1patch/e;

    return-void
.end method

.method static synthetic a(Z)Ldergoogler/dg1patch/a/a;
    .registers 2

    invoke-static {p0}, Ldergoogler/dg1patch/PrefDetailActivity;->b(Z)Ldergoogler/dg1patch/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ldergoogler/dg1patch/PrefDetailActivity;)V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->l:Ldergoogler/dg1patch/a/g;

    invoke-virtual {v0}, Ldergoogler/dg1patch/a/g;->b()V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->e:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Ldergoogler/dg1patch/PrefDetailActivity;Ljava/util/LinkedHashMap;)V
    .registers 8

    if-eqz p1, :cond_4a

    iput-object p1, p0, Ldergoogler/dg1patch/PrefDetailActivity;->h:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->l:Ldergoogler/dg1patch/a/g;

    if-nez v0, :cond_2a

    new-instance v0, Ldergoogler/dg1patch/a/g;

    const/4 v2, 0x0

    iget-object v3, p0, Ldergoogler/dg1patch/PrefDetailActivity;->g:Landroid/widget/TableLayout;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Ldergoogler/dg1patch/a/g;-><init>(Landroid/content/Context;Ldergoogler/dg1patch/a/d;Landroid/widget/TableLayout;Ldergoogler/dg1patch/a/h;Z)V

    iput-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->l:Ldergoogler/dg1patch/a/g;

    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Value"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ldergoogler/dg1patch/PrefDetailActivity;->l:Ldergoogler/dg1patch/a/g;

    invoke-virtual {v1, v0}, Ldergoogler/dg1patch/a/g;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->l:Ldergoogler/dg1patch/a/g;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefDetailActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ldergoogler/dg1patch/a/g;->a(Ljava/util/List;)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->l:Ldergoogler/dg1patch/a/g;

    invoke-virtual {v0}, Ldergoogler/dg1patch/a/g;->a()V

    :cond_4a
    return-void

    :cond_4b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v1, ""

    if-eqz v4, :cond_62

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_62
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private static b(Z)Ldergoogler/dg1patch/a/a;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Ldergoogler/dg1patch/a/i;

    invoke-direct {v0}, Ldergoogler/dg1patch/a/i;-><init>()V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ldergoogler/dg1patch/a/b;

    invoke-direct {v0}, Ldergoogler/dg1patch/a/b;-><init>()V

    goto :goto_7
.end method

.method static synthetic b(Ldergoogler/dg1patch/PrefDetailActivity;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    new-instance v0, Ldergoogler/dg1patch/f;

    invoke-direct {v0, p0}, Ldergoogler/dg1patch/f;-><init>(Ldergoogler/dg1patch/PrefDetailActivity;)V

    iput-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->d:Ldergoogler/dg1patch/f;

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->d:Ldergoogler/dg1patch/f;

    invoke-virtual {v0}, Ldergoogler/dg1patch/f;->start()V

    return-void
.end method

.method public final a(IZ)V
    .registers 6

    const/4 v2, 0x1

    if-nez p2, :cond_e

    new-instance v0, Ldergoogler/dg1patch/a;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefDetailActivity;->i:Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0, v1, p1, v2}, Ldergoogler/dg1patch/a;-><init>(Ldergoogler/dg1patch/PrefDetailActivity;Ljava/util/Map;IZ)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_d
    return-void

    :cond_e
    new-instance v0, Ldergoogler/dg1patch/a;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefDetailActivity;->h:Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0, v1, p1, v2}, Ldergoogler/dg1patch/a;-><init>(Ldergoogler/dg1patch/PrefDetailActivity;Ljava/util/Map;IZ)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_d
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_9

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->m:Ldergoogler/dg1patch/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldergoogler/dg1patch/e;->sendEmptyMessage(I)Z

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->m:Ldergoogler/dg1patch/e;

    invoke-virtual {v0, p1}, Ldergoogler/dg1patch/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->m:Ldergoogler/dg1patch/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldergoogler/dg1patch/e;->sendEmptyMessage(I)Z

    goto :goto_8
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefDetailActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldergoogler/dg1patch/PrefDetailActivity;->h:Ljava/util/LinkedHashMap;

    invoke-static {v1, v0}, Ldergoogler/dg1patch/b;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->setResult(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    packed-switch p1, :pswitch_data_e

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Ldergoogler/dg1patch/PrefDetailActivity;->a()V

    goto :goto_3

    :pswitch_data_e
    .packed-switch 0x3e8
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070011

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Ldergoogler/dg1patch/PrefDetailActivity;->finish()V

    :cond_e
    :goto_e
    return-void

    :cond_f
    const v1, 0x7f070010

    if-ne v0, v1, :cond_e

    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const v0, 0x7f050006

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_e

    :cond_3c
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_50
    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b2

    iput-object v5, p0, Ldergoogler/dg1patch/PrefDetailActivity;->i:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->l:Ldergoogler/dg1patch/a/g;

    invoke-virtual {v0, v6}, Ldergoogler/dg1patch/a/g;->b(Ljava/util/List;)V

    goto :goto_e

    :cond_64
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    move v0, v2

    :goto_7f
    if-nez v0, :cond_92

    if-eqz v8, :cond_92

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_92

    move v0, v2

    :cond_92
    if-eqz v0, :cond_50

    invoke-virtual {v5, v1, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_ac

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a8
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_ac
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    :cond_b2
    const-string v0, "No record found."

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_e

    :cond_bd
    move v0, v3

    goto :goto_7f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Ldergoogler/dg1patch/PrefDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appName"

    invoke-static {v0, v1}, Ldergoogler/dg1patch/b;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ldergoogler/dg1patch/PrefDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "xmlFilePath"

    invoke-static {v0, v1}, Ldergoogler/dg1patch/b;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->a:Ljava/lang/String;

    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->e:Landroid/widget/ScrollView;

    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->f:Landroid/widget/ProgressBar;

    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->g:Landroid/widget/TableLayout;

    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefDetailActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefDetailActivity;->a:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->n:Landroid/widget/Button;

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->n:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefDetailActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldergoogler/dg1patch/PrefDetailActivity;->a()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
