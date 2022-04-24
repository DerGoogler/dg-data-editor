.class final Ldergoogler/dg1patch/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldergoogler/dg1patch/PrefOverallActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Ldergoogler/dg1patch/PrefOverallActivity;Z)V
    .registers 3

    iput-object p1, p0, Ldergoogler/dg1patch/g;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    iput-boolean p2, p0, Ldergoogler/dg1patch/g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    const/16 v8, 0x2f

    const/4 v1, 0x0

    iget-object v0, p0, Ldergoogler/dg1patch/g;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    const v2, 0x7f070005

    invoke-virtual {v0, v2}, Ldergoogler/dg1patch/PrefOverallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Ldergoogler/dg1patch/g;->b:Z

    if-eqz v0, :cond_a9

    iget-object v0, p0, Ldergoogler/dg1patch/g;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->d(Ldergoogler/dg1patch/PrefOverallActivity;)Ldergoogler/dg1patch/i;

    move-result-object v0

    invoke-virtual {v0}, Ldergoogler/dg1patch/i;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_28
    if-lt v0, v3, :cond_4b

    :cond_2a
    iget-object v0, p0, Ldergoogler/dg1patch/g;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->d(Ldergoogler/dg1patch/PrefOverallActivity;)Ldergoogler/dg1patch/i;

    move-result-object v0

    invoke-virtual {v0}, Ldergoogler/dg1patch/i;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_3e
    if-lt v0, v3, :cond_7a

    :cond_40
    iget-object v0, p0, Ldergoogler/dg1patch/g;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->g(Ldergoogler/dg1patch/PrefOverallActivity;)V

    iget-object v0, p0, Ldergoogler/dg1patch/g;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-virtual {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->a()V

    :goto_4a
    return-void

    :cond_4b
    aget-object v4, v2, v0

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ldergoogler/dg1patch/g;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v6}, Ldergoogler/dg1patch/PrefOverallActivity;->e(Ldergoogler/dg1patch/PrefOverallActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ldergoogler/dg1patch/a/k;

    invoke-direct {v7, v5, v4}, Ldergoogler/dg1patch/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_7a
    aget-object v4, v2, v0

    const-string v5, ".db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ldergoogler/dg1patch/g;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v6}, Ldergoogler/dg1patch/PrefOverallActivity;->f(Ldergoogler/dg1patch/PrefOverallActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ldergoogler/dg1patch/a/k;

    invoke-direct {v7, v5, v4}, Ldergoogler/dg1patch/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_a9
    iget-object v0, p0, Ldergoogler/dg1patch/g;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    iget-object v2, p0, Ldergoogler/dg1patch/g;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    iget-object v2, v2, Ldergoogler/dg1patch/PrefOverallActivity;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4a
.end method
