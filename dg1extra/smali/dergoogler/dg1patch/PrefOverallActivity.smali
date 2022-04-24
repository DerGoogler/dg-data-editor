.class public Ldergoogler/dg1patch/PrefOverallActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ldergoogler/dg1patch/i;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/content/pm/PackageManager;

.field private i:Landroid/content/pm/ApplicationInfo;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:I

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->k:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->l:I

    const/4 v0, 0x0

    iput v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->n:I

    return-void
.end method

.method static synthetic a(Ldergoogler/dg1patch/PrefOverallActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ldergoogler/dg1patch/PrefOverallActivity;I)V
    .registers 2

    iput p1, p0, Ldergoogler/dg1patch/PrefOverallActivity;->n:I

    return-void
.end method

.method static synthetic a(Ldergoogler/dg1patch/PrefOverallActivity;J)V
    .registers 3

    return-void
.end method

.method static synthetic b(Ldergoogler/dg1patch/PrefOverallActivity;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Ldergoogler/dg1patch/PrefOverallActivity;)Ldergoogler/dg1patch/a/a;
    .registers 2

    new-instance v0, Ldergoogler/dg1patch/a/b;

    invoke-direct {v0}, Ldergoogler/dg1patch/a/b;-><init>()V

    return-object v0
.end method

.method static synthetic d(Ldergoogler/dg1patch/PrefOverallActivity;)Ldergoogler/dg1patch/i;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->c:Ldergoogler/dg1patch/i;

    return-object v0
.end method

.method static synthetic e(Ldergoogler/dg1patch/PrefOverallActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Ldergoogler/dg1patch/PrefOverallActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Ldergoogler/dg1patch/PrefOverallActivity;)V
    .registers 4

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->d:Landroid/widget/ListView;

    new-instance v1, Ldergoogler/dg1patch/c;

    iget-object v2, p0, Ldergoogler/dg1patch/PrefOverallActivity;->j:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Ldergoogler/dg1patch/c;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->d:Landroid/widget/ListView;

    new-instance v1, Ldergoogler/dg1patch/h;

    invoke-direct {v1, p0}, Ldergoogler/dg1patch/h;-><init>(Ldergoogler/dg1patch/PrefOverallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic h(Ldergoogler/dg1patch/PrefOverallActivity;)I
    .registers 2

    iget v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->n:I

    return v0
.end method

.method static synthetic i(Ldergoogler/dg1patch/PrefOverallActivity;)Landroid/content/pm/ApplicationInfo;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->i:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic j(Ldergoogler/dg1patch/PrefOverallActivity;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->h:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->l:I

    packed-switch v0, :pswitch_data_40

    :goto_6
    monitor-exit p0

    return-void

    :pswitch_8
    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->d:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_6

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_18
    :try_start_18
    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->d:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefOverallActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_33
    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_15

    goto :goto_6

    :pswitch_data_40
    .packed-switch -0x1
        :pswitch_8
        :pswitch_18
        :pswitch_33
    .end packed-switch
.end method

.method public final a(Z)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    :goto_4
    :try_start_4
    iput v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->l:I

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->c:Ldergoogler/dg1patch/i;

    invoke-virtual {v0}, Ldergoogler/dg1patch/i;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->a:Ljava/lang/String;

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1a

    new-instance v0, Ldergoogler/dg1patch/g;

    invoke-direct {v0, p0, p1}, Ldergoogler/dg1patch/g;-><init>(Ldergoogler/dg1patch/PrefOverallActivity;Z)V

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefOverallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_4

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefOverallActivity;->requestWindowFeature(I)Z

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefOverallActivity;->setContentView(I)V

    invoke-virtual {p0}, Ldergoogler/dg1patch/PrefOverallActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->b:Ljava/lang/String;

    :try_start_13
    invoke-virtual {p0}, Ldergoogler/dg1patch/PrefOverallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->h:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->h:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefOverallActivity;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->i:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->h:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefOverallActivity;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_2c} :catch_a2

    :goto_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iput-boolean v3, p0, Ldergoogler/dg1patch/PrefOverallActivity;->m:Z

    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefOverallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefOverallActivity;->i:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Ldergoogler/dg1patch/PrefOverallActivity;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefOverallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefOverallActivity;->i:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Ldergoogler/dg1patch/PrefOverallActivity;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefOverallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Ldergoogler/dg1patch/PrefOverallActivity;->i:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefOverallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->d:Landroid/widget/ListView;

    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefOverallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefOverallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->f:Landroid/widget/ProgressBar;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/PrefOverallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->g:Landroid/widget/TextView;

    new-instance v0, Ldergoogler/dg1patch/i;

    invoke-direct {v0, p0}, Ldergoogler/dg1patch/i;-><init>(Ldergoogler/dg1patch/PrefOverallActivity;)V

    iput-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->c:Ldergoogler/dg1patch/i;

    iget-object v0, p0, Ldergoogler/dg1patch/PrefOverallActivity;->c:Ldergoogler/dg1patch/i;

    invoke-virtual {v0}, Ldergoogler/dg1patch/i;->start()V

    return-void

    :catch_a2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2c
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
