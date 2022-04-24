.class final Ldergoogler/dg1patch/f;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ldergoogler/dg1patch/PrefDetailActivity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldergoogler/dg1patch/f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v1, p0, Ldergoogler/dg1patch/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldergoogler/dg1patch/PrefDetailActivity;

    if-eqz v1, :cond_20

    :try_start_a
    invoke-static {}, Ldergoogler/dg1patch/a/j;->a()Z

    move-result v2

    if-nez v2, :cond_21

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Can not find SD Card!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_18

    :catch_18
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldergoogler/dg1patch/PrefDetailActivity;->a(Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    :try_start_21
    invoke-static {v1}, Ldergoogler/dg1patch/PrefDetailActivity;->b(Ldergoogler/dg1patch/PrefDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-static {v1}, Ldergoogler/dg1patch/a/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/tmp.xml"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ldergoogler/dg1patch/PrefDetailActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Ldergoogler/dg1patch/PrefDetailActivity;->b(Ldergoogler/dg1patch/PrefDetailActivity;)Z

    move-result v3

    invoke-static {v3}, Ldergoogler/dg1patch/PrefDetailActivity;->a(Z)Ldergoogler/dg1patch/a/a;

    move-result-object v3

    const-string v4, "cat \"%s\" > %s && chmod 666 %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Ldergoogler/dg1patch/PrefDetailActivity;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x7d0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Ldergoogler/dg1patch/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_79

    iget-object v2, v1, Ldergoogler/dg1patch/PrefDetailActivity;->a:Ljava/lang/String;

    :cond_79
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ldergoogler/dg1patch/b;->a(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :goto_85
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_92
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_af

    invoke-static {v1, v4}, Ldergoogler/dg1patch/PrefDetailActivity;->a(Ldergoogler/dg1patch/PrefDetailActivity;Ljava/util/LinkedHashMap;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldergoogler/dg1patch/PrefDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_20

    :cond_a0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v2, v1, Ldergoogler/dg1patch/PrefDetailActivity;->a:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ldergoogler/dg1patch/b;->a(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_85

    :cond_af
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_c4} :catch_18

    goto :goto_92
.end method
