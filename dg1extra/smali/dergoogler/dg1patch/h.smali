.class final Ldergoogler/dg1patch/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Ldergoogler/dg1patch/PrefOverallActivity;


# direct methods
.method constructor <init>(Ldergoogler/dg1patch/PrefOverallActivity;)V
    .registers 2

    iput-object p1, p0, Ldergoogler/dg1patch/h;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    iget-object v0, p0, Ldergoogler/dg1patch/h;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ldergoogler/dg1patch/PrefOverallActivity;->a(Ldergoogler/dg1patch/PrefOverallActivity;J)V

    iget-object v0, p0, Ldergoogler/dg1patch/h;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->h(Ldergoogler/dg1patch/PrefOverallActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ldergoogler/dg1patch/PrefOverallActivity;->a(Ldergoogler/dg1patch/PrefOverallActivity;I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Ldergoogler/dg1patch/h;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    const-class v2, Ldergoogler/dg1patch/PrefDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "appName"

    iget-object v0, p0, Ldergoogler/dg1patch/h;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->i(Ldergoogler/dg1patch/PrefOverallActivity;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, p0, Ldergoogler/dg1patch/h;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v3}, Ldergoogler/dg1patch/PrefOverallActivity;->j(Ldergoogler/dg1patch/PrefOverallActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Ldergoogler/dg1patch/b;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const-string v2, "xmlFilePath"

    iget-object v0, p0, Ldergoogler/dg1patch/h;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->e(Ldergoogler/dg1patch/PrefOverallActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldergoogler/dg1patch/a/k;

    iget-object v0, v0, Ldergoogler/dg1patch/a/k;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Ldergoogler/dg1patch/b;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const-string v0, "packagePath"

    iget-object v2, p0, Ldergoogler/dg1patch/h;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v2}, Ldergoogler/dg1patch/PrefOverallActivity;->a(Ldergoogler/dg1patch/PrefOverallActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ldergoogler/dg1patch/b;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const-string v0, "isRootMode"

    iget-object v2, p0, Ldergoogler/dg1patch/h;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    invoke-static {v2}, Ldergoogler/dg1patch/PrefOverallActivity;->b(Ldergoogler/dg1patch/PrefOverallActivity;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Ldergoogler/dg1patch/b;->a(Landroid/content/Intent;Ljava/lang/String;Z)Landroid/os/Bundle;

    const-string v0, "isDark"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ldergoogler/dg1patch/b;->a(Landroid/content/Intent;Ljava/lang/String;Z)Landroid/os/Bundle;

    iget-object v0, p0, Ldergoogler/dg1patch/h;->a:Ldergoogler/dg1patch/PrefOverallActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Ldergoogler/dg1patch/PrefOverallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
