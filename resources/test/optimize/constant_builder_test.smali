.class Lconstant_builder_test;
.super Ljava/lang/Object;

# TODO: Long, Float, Double, Byte, Char, Class and String
.method public static KnownIntForBinaryMathOp()I
  .locals 1

  const/4 v0, 0x1
  add-int/2addr v0, v0

  return v0
.end method

.method public static KnownIntForMove()I
    .locals 2

    const/4 v0, 0x5
    move v1, v0

    return v1
.end method

.method public static InvokeIntegerMethods()I
    .locals 2

    new-instance v0, Ljava/lang/Integer;
    const/4 v1, 0x1
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0

    return v0
.end method

.method public static UseUknownParameter(I)I
    .locals 1

    const/4 v0, 0x0
    add-int/2addr v0, v1
    return v0
.end method

.method private static AddOneNoSideEffects(I)I
  .locals 0

  add-int/2addr p0, p0

  return p0
.end method

.method private static AddOneWithSideEffects(I)I
  .locals 0

  invoke-static {}, Lunknown_class;->UnknownMethodHasSideEffects()V
  add-int/2addr p0, p0

  return p0
.end method