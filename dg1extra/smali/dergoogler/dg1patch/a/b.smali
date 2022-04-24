.class public final Ldergoogler/dg1patch/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ldergoogler/dg1patch/a/a;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ldergoogler/dg1patch/a/b;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const/16 v0, 0x2000

    new-array v0, v0, [C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_11
    array-length v3, v0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    if-lez v3, :cond_1b

    invoke-virtual {v1, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_1b
    if-gez v3, :cond_11

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/Integer;Z)Z
    .registers 15

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_4c

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    :goto_11
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz p3, :cond_5c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    :cond_25
    const-wide/16 v8, 0x14

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v2}, Ldergoogler/dg1patch/a/b;->a(Ljava/lang/Process;)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_25

    const-string v1, "CommandRunner"

    const-string v3, "Process doesn\'t seem to stop on it\'s own, assuming it\'s hanging"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldergoogler/dg1patch/a/b;->a:[Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "Timeout!"

    aput-object v4, v1, v3
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_46} :catch_94
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_46} :catch_a7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_46} :catch_ba
    .catchall {:try_start_3 .. :try_end_46} :catchall_ce

    if-eqz v2, :cond_4b

    :try_start_48
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_4b
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_48 .. :try_end_4b} :catch_57

    :cond_4b
    :goto_4b
    return v0

    :cond_4c
    :try_start_4c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_55} :catch_94
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_55} :catch_a7
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_55} :catch_ba
    .catchall {:try_start_4c .. :try_end_55} :catchall_ce

    move-result-object v2

    goto :goto_11

    :catch_57
    move-exception v1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_4b

    :cond_5c
    :try_start_5c
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    :cond_5f
    iget-object v5, p0, Ldergoogler/dg1patch/a/b;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3}, Ldergoogler/dg1patch/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v5, p0, Ldergoogler/dg1patch/a/b;->a:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4}, Ldergoogler/dg1patch/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3}, Ldergoogler/dg1patch/a/b;->b(Ljava/io/InputStream;)V

    invoke-static {v4}, Ldergoogler/dg1patch/a/b;->b(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_7a} :catch_94
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_7a} :catch_a7
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_7a} :catch_ba
    .catchall {:try_start_5c .. :try_end_7a} :catchall_ce

    move-result v3

    if-eqz v3, :cond_88

    if-eqz v2, :cond_4b

    :try_start_7f
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_82
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_4b

    :catch_83
    move-exception v1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_4b

    :cond_88
    if-eqz v2, :cond_8d

    :try_start_8a
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_8d
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_8a .. :try_end_8d} :catch_8f

    :cond_8d
    :goto_8d
    move v0, v1

    goto :goto_4b

    :catch_8f
    move-exception v0

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_8d

    :catch_94
    move-exception v1

    :try_start_95
    const-string v3, "DEBUG"

    const-string v4, "Failed to run command"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_ce

    if-eqz v2, :cond_4b

    :try_start_9e
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_a1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_4b

    :catch_a2
    move-exception v1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_4b

    :catch_a7
    move-exception v1

    :try_start_a8
    const-string v3, "DEBUG"

    const-string v4, "Failed to run command"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_ce

    if-eqz v2, :cond_4b

    :try_start_b1
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_b4
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_4b

    :catch_b5
    move-exception v1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_4b

    :catch_ba
    move-exception v1

    :try_start_bb
    const-string v3, "DEBUG"

    const-string v4, "Failed to run command"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_ce

    if-eqz v2, :cond_4b

    :try_start_c4
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_c7
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_4b

    :catch_c8
    move-exception v1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_4b

    :catchall_ce
    move-exception v0

    if-eqz v2, :cond_d4

    :try_start_d1
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_d4
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_d1 .. :try_end_d4} :catch_d5

    :cond_d4
    :goto_d4
    throw v0

    :catch_d5
    move-exception v1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_d4
.end method

.method private static a(Ljava/lang/Process;)Z
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    :try_end_3
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x1

    goto :goto_4
.end method

.method private static b(Ljava/io/InputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ldergoogler/dg1patch/a/b;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Ldergoogler/dg1patch/a/b;->a(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/Integer;Z)Z

    move-result v0

    return v0
.end method
