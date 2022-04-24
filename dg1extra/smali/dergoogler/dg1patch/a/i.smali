.class public final Ldergoogler/dg1patch/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ldergoogler/dg1patch/a/a;


# static fields
.field private static c:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/bin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/bin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/xbin/su"

    aput-object v2, v0, v1

    sput-object v0, Ldergoogler/dg1patch/a/i;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .registers 10

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz p1, :cond_2c

    array-length v0, p1

    :goto_c
    add-int/2addr v0, v3

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz p1, :cond_23

    array-length v1, p1

    :goto_21
    if-lt v2, v1, :cond_5e

    :cond_23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0

    :cond_2c
    move v0, v2

    goto :goto_c

    :cond_2e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    add-int/lit8 v4, v3, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    move v3, v4

    goto :goto_18

    :cond_5e
    aget-object v4, p1, v2

    add-int/lit8 v0, v3, 0x1

    aput-object v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_21
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

.method private b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)Z
    .registers 14

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_3
    const-string v0, "Running \'%s\' as root"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string v1, "su"

    sget-object v6, Ldergoogler/dg1patch/a/i;->c:[Ljava/lang/String;

    array-length v7, v6

    move v5, v3

    :goto_14
    if-lt v5, v7, :cond_78

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "su path: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1, p2}, Ldergoogler/dg1patch/a/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_27} :catch_10e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_27} :catch_13b
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_27} :catch_169
    .catchall {:try_start_3 .. :try_end_27} :catchall_197

    move-result-object v5

    :try_start_28
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_31} :catch_1c5
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_31} :catch_1be
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_31} :catch_1b9
    .catchall {:try_start_28 .. :try_end_31} :catchall_1b1

    :try_start_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "echo \"rc:\" $?\n"

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "exit\n"

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    if-eqz p3, :cond_96

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    :cond_60
    invoke-static {v5}, Ldergoogler/dg1patch/a/i;->a(Ljava/lang/Process;)Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_69} :catch_1ca
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_69} :catch_1c2
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_69} :catch_1bc
    .catchall {:try_start_31 .. :try_end_69} :catchall_1b4

    move-result-wide v8

    cmp-long v0, v8, v6

    if-lez v0, :cond_60

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_8a

    if-eqz v5, :cond_76

    :try_start_73
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I
    :try_end_76
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_73 .. :try_end_76} :catch_91

    :cond_76
    :goto_76
    move v0, v2

    :goto_77
    return v0

    :cond_78
    :try_start_78
    aget-object v0, v6, v5

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_82
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_82} :catch_10e
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_82} :catch_13b
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_82} :catch_169
    .catchall {:try_start_78 .. :try_end_82} :catchall_197

    move-result v8

    if-eqz v8, :cond_1ce

    :goto_85
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_14

    :catch_8a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_91
    move-exception v0

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_76

    :cond_96
    :try_start_96
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    :cond_99
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ldergoogler/dg1patch/a/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/a/i;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ldergoogler/dg1patch/a/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/a/i;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Process returned with "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Process stdout was: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ldergoogler/dg1patch/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; stderr: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Ldergoogler/dg1patch/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I
    :try_end_de
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_de} :catch_1ca
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_de} :catch_1c2
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_de} :catch_1bc
    .catchall {:try_start_96 .. :try_end_de} :catchall_1b4

    move-result v0

    if-eqz v0, :cond_f7

    :try_start_e1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_eb

    if-eqz v5, :cond_e9

    :try_start_e6
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I
    :try_end_e9
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_e6 .. :try_end_e9} :catch_f2

    :cond_e9
    :goto_e9
    move v0, v3

    goto :goto_77

    :catch_eb
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_f2
    move-exception v0

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_e9

    :cond_f7
    :try_start_f7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_102

    if-eqz v5, :cond_ff

    :try_start_fc
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I
    :try_end_ff
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_fc .. :try_end_ff} :catch_109

    :cond_ff
    :goto_ff
    move v0, v2

    goto/16 :goto_77

    :catch_102
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_109
    move-exception v0

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_ff

    :catch_10e
    move-exception v0

    move-object v1, v4

    :goto_110
    :try_start_110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Failed to run command: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_122
    .catchall {:try_start_110 .. :try_end_122} :catchall_1b6

    if-eqz v1, :cond_127

    :try_start_124
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_127} :catch_12f

    :cond_127
    if-eqz v4, :cond_12c

    :try_start_129
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I
    :try_end_12c
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_129 .. :try_end_12c} :catch_136

    :cond_12c
    :goto_12c
    move v0, v3

    goto/16 :goto_77

    :catch_12f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_136
    move-exception v0

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    goto :goto_12c

    :catch_13b
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_13e
    :try_start_13e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to run command: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_150
    .catchall {:try_start_13e .. :try_end_150} :catchall_1b4

    if-eqz v1, :cond_155

    :try_start_152
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_15d

    :cond_155
    if-eqz v5, :cond_15a

    :try_start_157
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I
    :try_end_15a
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_157 .. :try_end_15a} :catch_164

    :cond_15a
    :goto_15a
    move v0, v3

    goto/16 :goto_77

    :catch_15d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_164
    move-exception v0

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_15a

    :catch_169
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_16c
    :try_start_16c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to run command: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17e
    .catchall {:try_start_16c .. :try_end_17e} :catchall_1b4

    if-eqz v1, :cond_183

    :try_start_180
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_183} :catch_18b

    :cond_183
    if-eqz v5, :cond_188

    :try_start_185
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I
    :try_end_188
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_185 .. :try_end_188} :catch_192

    :cond_188
    :goto_188
    move v0, v3

    goto/16 :goto_77

    :catch_18b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_192
    move-exception v0

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_188

    :catchall_197
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_19a
    if-eqz v1, :cond_19f

    :try_start_19c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_19f} :catch_1a5

    :cond_19f
    if-eqz v5, :cond_1a4

    :try_start_1a1
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I
    :try_end_1a4
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1a1 .. :try_end_1a4} :catch_1ac

    :cond_1a4
    :goto_1a4
    throw v0

    :catch_1a5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1ac
    move-exception v1

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_1a4

    :catchall_1b1
    move-exception v0

    move-object v1, v4

    goto :goto_19a

    :catchall_1b4
    move-exception v0

    goto :goto_19a

    :catchall_1b6
    move-exception v0

    move-object v5, v4

    goto :goto_19a

    :catch_1b9
    move-exception v0

    move-object v1, v4

    goto :goto_16c

    :catch_1bc
    move-exception v0

    goto :goto_16c

    :catch_1be
    move-exception v0

    move-object v1, v4

    goto/16 :goto_13e

    :catch_1c2
    move-exception v0

    goto/16 :goto_13e

    :catch_1c5
    move-exception v0

    move-object v1, v4

    move-object v4, v5

    goto/16 :goto_110

    :catch_1ca
    move-exception v0

    move-object v4, v5

    goto/16 :goto_110

    :cond_1ce
    move-object v0, v1

    goto/16 :goto_85
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Ldergoogler/dg1patch/a/i;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
