.class public final Ldergoogler/dg1patch/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:[C

.field private c:I

.field private d:Ljava/io/Writer;

.field private e:Ljava/io/OutputStream;

.field private f:Ljava/nio/charset/CharsetEncoder;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "&quot;"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "&amp;"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    sput-object v0, Ldergoogler/dg1patch/a/f;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v1, 0x2000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Ldergoogler/dg1patch/a/f;->b:[C

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/a/f;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Ldergoogler/dg1patch/a/f;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v1, p0, Ldergoogler/dg1patch/a/f;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Ldergoogler/dg1patch/a/f;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Ldergoogler/dg1patch/a/f;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/f;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1e
    return-void
.end method

.method private a(C)V
    .registers 4

    iget v0, p0, Ldergoogler/dg1patch/a/f;->c:I

    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/f;->flush()V

    iget v0, p0, Ldergoogler/dg1patch/a/f;->c:I

    :cond_b
    iget-object v1, p0, Ldergoogler/dg1patch/a/f;->b:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldergoogler/dg1patch/a/f;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .registers 8

    const/16 v1, 0x2000

    if-le p3, v1, :cond_16

    add-int v3, p2, p3

    :goto_6
    if-lt p2, v3, :cond_9

    :goto_8
    return-void

    :cond_9
    add-int/lit16 v2, p2, 0x2000

    if-ge v2, v3, :cond_13

    move v0, v1

    :goto_e
    invoke-direct {p0, p1, p2, v0}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;II)V

    move p2, v2

    goto :goto_6

    :cond_13
    sub-int v0, v3, p2

    goto :goto_e

    :cond_16
    iget v0, p0, Ldergoogler/dg1patch/a/f;->c:I

    add-int v2, v0, p3

    if-le v2, v1, :cond_21

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/f;->flush()V

    iget v0, p0, Ldergoogler/dg1patch/a/f;->c:I

    :cond_21
    add-int v1, p2, p3

    iget-object v2, p0, Ldergoogler/dg1patch/a/f;->b:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v0, p3

    iput v0, p0, Ldergoogler/dg1patch/a/f;->c:I

    goto :goto_8
.end method

.method private a([CII)V
    .registers 8

    const/16 v1, 0x2000

    if-le p3, v1, :cond_16

    add-int v3, p2, p3

    :goto_6
    if-lt p2, v3, :cond_9

    :goto_8
    return-void

    :cond_9
    add-int/lit16 v2, p2, 0x2000

    if-ge v2, v3, :cond_13

    move v0, v1

    :goto_e
    invoke-direct {p0, p1, p2, v0}, Ldergoogler/dg1patch/a/f;->a([CII)V

    move p2, v2

    goto :goto_6

    :cond_13
    sub-int v0, v3, p2

    goto :goto_e

    :cond_16
    iget v0, p0, Ldergoogler/dg1patch/a/f;->c:I

    add-int v2, v0, p3

    if-le v2, v1, :cond_21

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/f;->flush()V

    iget v0, p0, Ldergoogler/dg1patch/a/f;->c:I

    :cond_21
    iget-object v1, p0, Ldergoogler/dg1patch/a/f;->b:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p3

    iput v0, p0, Ldergoogler/dg1patch/a/f;->c:I

    goto :goto_8
.end method

.method private b(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v1, Ldergoogler/dg1patch/a/f;->a:[Ljava/lang/String;

    array-length v1, v1

    int-to-char v3, v1

    sget-object v4, Ldergoogler/dg1patch/a/f;->a:[Ljava/lang/String;

    move v1, v0

    :goto_c
    if-lt v1, v2, :cond_15

    if-ge v0, v1, :cond_14

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;II)V

    :cond_14
    return-void

    :cond_15
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_2b

    aget-object v5, v4, v5

    if-eqz v5, :cond_2b

    if-ge v0, v1, :cond_26

    sub-int v6, v1, v0

    invoke-direct {p0, p1, v0, v6}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;II)V

    :cond_26
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v5}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method


# virtual methods
.method public final attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(C)V

    if-eqz p1, :cond_f

    invoke-direct {p0, p1}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(C)V

    :cond_f
    invoke-direct {p0, p2}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    const-string v0, "=\""

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Ldergoogler/dg1patch/a/f;->b(Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(C)V

    return-object p0
.end method

.method public final cdsect(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final comment(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final docdecl(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final endDocument()V
    .registers 1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/f;->flush()V

    return-void
.end method

.method public final endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 4

    iget-boolean v0, p0, Ldergoogler/dg1patch/a/f;->h:Z

    if-eqz v0, :cond_d

    const-string v0, " />\n"

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    :goto_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldergoogler/dg1patch/a/f;->h:Z

    return-object p0

    :cond_d
    const-string v0, "</"

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1c

    invoke-direct {p0, p1}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(C)V

    :cond_1c
    invoke-direct {p0, p2}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    const-string v0, ">\n"

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public final entityRef(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final flush()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Ldergoogler/dg1patch/a/f;->c:I

    if-lez v0, :cond_46

    iget-object v0, p0, Ldergoogler/dg1patch/a/f;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_47

    iget-object v0, p0, Ldergoogler/dg1patch/a/f;->b:[C

    iget v1, p0, Ldergoogler/dg1patch/a/f;->c:I

    invoke-static {v0, v3, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    iget-object v0, p0, Ldergoogler/dg1patch/a/f;->f:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Ldergoogler/dg1patch/a/f;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    :goto_1a
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Ldergoogler/dg1patch/a/f;->a()V

    iget-object v0, p0, Ldergoogler/dg1patch/a/f;->f:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Ldergoogler/dg1patch/a/f;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_1a

    :cond_3c
    invoke-direct {p0}, Ldergoogler/dg1patch/a/f;->a()V

    iget-object v0, p0, Ldergoogler/dg1patch/a/f;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :goto_44
    iput v3, p0, Ldergoogler/dg1patch/a/f;->c:I

    :cond_46
    return-void

    :cond_47
    iget-object v0, p0, Ldergoogler/dg1patch/a/f;->d:Ljava/io/Writer;

    iget-object v1, p0, Ldergoogler/dg1patch/a/f;->b:[C

    iget v2, p0, Ldergoogler/dg1patch/a/f;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/f;->d:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_44
.end method

.method public final getDepth()I
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getFeature(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final ignorableWhitespace(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final processingInstruction(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setFeature(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    :try_start_8
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/a/f;->f:Ljava/nio/charset/CharsetEncoder;
    :try_end_12
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_8 .. :try_end_12} :catch_15
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_8 .. :try_end_12} :catch_22

    iput-object p1, p0, Ldergoogler/dg1patch/a/f;->e:Ljava/io/OutputStream;

    return-void

    :catch_15
    move-exception v0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0

    :catch_22
    move-exception v0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0
.end method

.method public final setOutput(Ljava/io/Writer;)V
    .registers 2

    iput-object p1, p0, Ldergoogler/dg1patch/a/f;->d:Ljava/io/Writer;

    return-void
.end method

.method public final setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "yes"

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    return-void

    :cond_21
    const-string v0, "no"

    goto :goto_f
.end method

.method public final startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 4

    iget-boolean v0, p0, Ldergoogler/dg1patch/a/f;->h:Z

    if-eqz v0, :cond_9

    const-string v0, ">\n"

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    :cond_9
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(C)V

    if-eqz p1, :cond_18

    invoke-direct {p0, p1}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(C)V

    :cond_18
    invoke-direct {p0, p2}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldergoogler/dg1patch/a/f;->h:Z

    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 3

    iget-boolean v0, p0, Ldergoogler/dg1patch/a/f;->h:Z

    if-eqz v0, :cond_c

    const-string v0, ">"

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldergoogler/dg1patch/a/f;->h:Z

    :cond_c
    invoke-direct {p0, p1}, Ldergoogler/dg1patch/a/f;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public final text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .registers 10

    iget-boolean v0, p0, Ldergoogler/dg1patch/a/f;->h:Z

    if-eqz v0, :cond_c

    const-string v0, ">"

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldergoogler/dg1patch/a/f;->h:Z

    :cond_c
    sget-object v0, Ldergoogler/dg1patch/a/f;->a:[Ljava/lang/String;

    array-length v0, v0

    int-to-char v1, v0

    sget-object v2, Ldergoogler/dg1patch/a/f;->a:[Ljava/lang/String;

    add-int v3, p2, p3

    move v0, p2

    :goto_15
    if-lt p2, v3, :cond_1f

    if-ge v0, p2, :cond_1e

    sub-int v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Ldergoogler/dg1patch/a/f;->a([CII)V

    :cond_1e
    return-object p0

    :cond_1f
    aget-char v4, p1, p2

    if-ge v4, v1, :cond_33

    aget-object v4, v2, v4

    if-eqz v4, :cond_33

    if-ge v0, p2, :cond_2e

    sub-int v5, p2, v0

    invoke-direct {p0, p1, v0, v5}, Ldergoogler/dg1patch/a/f;->a([CII)V

    :cond_2e
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v4}, Ldergoogler/dg1patch/a/f;->a(Ljava/lang/String;)V

    :cond_33
    add-int/lit8 p2, p2, 0x1

    goto :goto_15
.end method
