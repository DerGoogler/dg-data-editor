.class final Ldergoogler/dg1patch/i;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldergoogler/dg1patch/PrefOverallActivity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p1}, Ldergoogler/dg1patch/PrefOverallActivity;->a(Ldergoogler/dg1patch/PrefOverallActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/i;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldergoogler/dg1patch/i;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final run()V
    .registers 10

    const/4 v8, 0x0

    const/16 v7, 0x1388

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Ldergoogler/dg1patch/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldergoogler/dg1patch/PrefOverallActivity;

    if-nez v0, :cond_1d

    :goto_f
    iget-object v0, p0, Ldergoogler/dg1patch/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldergoogler/dg1patch/PrefOverallActivity;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v1}, Ldergoogler/dg1patch/PrefOverallActivity;->a(Z)V

    :cond_1c
    return-void

    :cond_1d
    invoke-static {}, Ldergoogler/dg1patch/a/j;->a()Z

    move-result v3

    if-nez v3, :cond_28

    const-string v0, "Can not find SD card!"

    iput-object v0, p0, Ldergoogler/dg1patch/i;->c:Ljava/lang/String;

    goto :goto_f

    :cond_28
    invoke-virtual {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_40

    const-string v0, "Can not find data path!"

    iput-object v0, p0, Ldergoogler/dg1patch/i;->c:Ljava/lang/String;

    goto :goto_f

    :cond_40
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->b(Ldergoogler/dg1patch/PrefOverallActivity;)Z

    move-result v4

    if-eqz v4, :cond_c3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ldergoogler/dg1patch/i;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/shared_prefs/*.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ldergoogler/dg1patch/i;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/databases/*.db"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ldergoogler/dg1patch/PrefOverallActivity;->c(Ldergoogler/dg1patch/PrefOverallActivity;)Ldergoogler/dg1patch/a/a;

    move-result-object v0

    const-string v5, "ls %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v8, v5}, Ldergoogler/dg1patch/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_b7

    invoke-interface {v0}, Ldergoogler/dg1patch/a/a;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ldergoogler/dg1patch/i;->d:Ljava/lang/String;

    const-string v4, "ls %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v8, v4}, Ldergoogler/dg1patch/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v0}, Ldergoogler/dg1patch/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/i;->e:Ljava/lang/String;

    :cond_b4
    :goto_b4
    move v1, v2

    goto/16 :goto_f

    :cond_b7
    const-string v0, "Can not get access to read files!"

    iput-object v0, p0, Ldergoogler/dg1patch/i;->c:Ljava/lang/String;

    goto/16 :goto_f

    :cond_bd
    const-string v0, "Can not get access to read files!"

    iput-object v0, p0, Ldergoogler/dg1patch/i;->c:Ljava/lang/String;

    goto/16 :goto_f

    :cond_c3
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ldergoogler/dg1patch/i;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/shared_prefs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_f6

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    array-length v6, v4

    move v0, v1

    :goto_ee
    if-lt v0, v6, :cond_129

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/i;->d:Ljava/lang/String;

    :cond_f6
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ldergoogler/dg1patch/i;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/databases"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    array-length v4, v0

    :goto_120
    if-lt v1, v4, :cond_13a

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/i;->e:Ljava/lang/String;

    goto :goto_b4

    :cond_129
    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_ee

    :cond_13a
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_120
.end method
