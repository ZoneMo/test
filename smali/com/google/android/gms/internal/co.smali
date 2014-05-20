.class public abstract Lcom/google/android/gms/internal/co;
.super Ljava/lang/Object;


# instance fields
.field protected final Qa:Lcom/google/android/gms/internal/l;

.field protected final Qb:I

.field private final Qc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/l;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/i;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/l;

    iput-object v0, p0, Lcom/google/android/gms/internal/co;->Qa:Lcom/google/android/gms/internal/l;

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/l;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/i;->F(Z)V

    iput p2, p0, Lcom/google/android/gms/internal/co;->Qb:I

    iget v0, p0, Lcom/google/android/gms/internal/co;->Qb:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/l;->aW(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/co;->Qc:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final X(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->Qa:Lcom/google/android/gms/internal/l;

    iget v1, p0, Lcom/google/android/gms/internal/co;->Qb:I

    iget v2, p0, Lcom/google/android/gms/internal/co;->Qc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/l;->e(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final Y(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->Qa:Lcom/google/android/gms/internal/l;

    iget v1, p0, Lcom/google/android/gms/internal/co;->Qb:I

    iget v2, p0, Lcom/google/android/gms/internal/co;->Qc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/l;->f(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/co;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/co;

    iget v1, p1, Lcom/google/android/gms/internal/co;->Qb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/co;->Qb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/google/android/gms/internal/co;->Qc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/co;->Qc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/co;->Qa:Lcom/google/android/gms/internal/l;

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->Qa:Lcom/google/android/gms/internal/l;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected final getBoolean(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->Qa:Lcom/google/android/gms/internal/l;

    iget v1, p0, Lcom/google/android/gms/internal/co;->Qb:I

    iget v2, p0, Lcom/google/android/gms/internal/co;->Qc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/l;->d(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected final getInteger(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->Qa:Lcom/google/android/gms/internal/l;

    iget v1, p0, Lcom/google/android/gms/internal/co;->Qb:I

    iget v2, p0, Lcom/google/android/gms/internal/co;->Qc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/l;->b(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected final getLong(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->Qa:Lcom/google/android/gms/internal/l;

    iget v1, p0, Lcom/google/android/gms/internal/co;->Qb:I

    iget v2, p0, Lcom/google/android/gms/internal/co;->Qc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/l;->a(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->Qa:Lcom/google/android/gms/internal/l;

    iget v1, p0, Lcom/google/android/gms/internal/co;->Qb:I

    iget v2, p0, Lcom/google/android/gms/internal/co;->Qc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/l;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/co;->Qb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/co;->Qc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->Qa:Lcom/google/android/gms/internal/l;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
