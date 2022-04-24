.class final Ldergoogler/dg1patch/a/c;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[Ljava/lang/String;

.field private c:I


# virtual methods
.method public final run()V
    .registers 6

    const/16 v0, 0x80

    new-array v0, v0, [C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_9
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Ldergoogler/dg1patch/a/c;->a:Ljava/io/InputStream;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_12
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v3

    if-lez v3, :cond_1e

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_2b

    :cond_1e
    if-gez v3, :cond_12

    :goto_20
    iget-object v0, p0, Ldergoogler/dg1patch/a/c;->b:[Ljava/lang/String;

    iget v2, p0, Ldergoogler/dg1patch/a/c;->c:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-void

    :catch_2b
    move-exception v0

    goto :goto_20
.end method
